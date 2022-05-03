import Foundation
import WebIDL

func parseOptions() -> [(name: String, path: URL)] {
    let args = CommandLine.arguments
    if args.count > 2 {
        fatalError()
    } else {
        return IDLParser.defaultIDLs()
    }
}

main()

func main() {
    do {
        let idlInputs = parseOptions()
        Record.reset()
        let startTime = Date()
        print("Generating bindings for \(idlInputs.map(\.path))...")
        let idls = try idlInputs.map { try (name: $0.name, collection: IDLParser.parseIDL(path: $0.path)) }
        var graph = DeclGraph.build(from: idls.map { ($0, $1.array) })
        graph.compact()

        if let graphPath = ProcessInfo.processInfo.environment["WEBIDL_TO_SWIFT_DUMP_GRAPH"] {
            try graph.render().write(toFile: graphPath, atomically: true, encoding: .utf8)
        }

        try generate(idls: idls.map(\.collection), imports: [], outputPath: "Sources/DOMKit/DOMKit.swift")
        print("Done in \(Int(Date().timeIntervalSince(startTime) * 1000))ms.")
    } catch {
        handleDecodingError(error)
    }
}

private func generate(idls: [GenericCollection<IDLNode>],
                      imports: [String],
                      outputPath: String,
                      fileManager: FileManager = .default) throws {
    var contents: [SwiftSource] = []
    contents.append(IDLBuilder.preamble(imports: imports))
    contents.append(try IDLBuilder.generateIDLBindings(idl: idls))
    print("Generating closure property wrappers...")
    contents.append(try IDLBuilder.generateClosureTypes())
    print("Generating JSString constants...")
    contents.append(try IDLBuilder.generateStrings())
    print("Generating union protocols...")
    contents.append(try IDLBuilder.generateUnions())
    try fileManager.createDirectory(
        at: URL(fileURLWithPath: outputPath).deletingLastPathComponent(),
        withIntermediateDirectories: true
    )
    try IDLBuilder.writeFile(
        path: outputPath,
        content: contents.joined(separator: "\n\n").source)

    SwiftFormatter.run(source: outputPath)
}

private func handleDecodingError(_ error: Error) {
    switch error as? DecodingError {
    case let .dataCorrupted(ctx), let .typeMismatch(_, ctx):
        debugContext(ctx)
    case let .valueNotFound(type, ctx):
        print("Value of type \(type) not found")
        debugContext(ctx)
    case let .keyNotFound(key, ctx):
        print("Key \(key.stringValue) not found")
        debugContext(ctx)
    case nil, .some:
        print(error.localizedDescription)
    }
    exit(1)
}

private func debugContext(_ ctx: DecodingError.Context) {
    print("Key path: <root>\(ctx.codingPath.map { "." + $0.stringValue }.joined())")
    print(ctx.debugDescription)
    if let underlying = ctx.underlyingError as NSError?,
       let debugDescription = underlying.userInfo["NSDebugDescription"]
    {
        print(debugDescription)
    }
}
