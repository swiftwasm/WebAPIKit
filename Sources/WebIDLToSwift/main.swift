import Foundation
import WebIDL

func parseOptions() -> [(outputPath: String, idlPaths: [URL])] {
    let args = CommandLine.arguments
    if args.count > 2 {
        return [(args[1], Array(args[2...].map(URL.init(fileURLWithPath: ))))]
    } else {
        return [("Sources/DOMKit/Generated.swift", IDLParser.defaultIDLs())]
    }
}

main()

func main() {
    do {
        let options = parseOptions()
        for (outputPath, idlPaths) in options {
            let startTime = Date()
            print("Generating bindings for \(idlPaths.map(\.path))...")
            let idls = try idlPaths.map { try IDLParser.parseIDL(path: $0) }
            try generate(idls: idls, outputPath: outputPath)
            print("Done in \(Int(Date().timeIntervalSince(startTime) * 1000))ms.")
        }
    } catch {
        handleDecodingError(error)
    }
}

private func generate(idls: [GenericCollection<IDLNode>], outputPath: String) throws {
    var contents: [SwiftSource] = []
    contents.append(try IDLBuilder.generateIDLBindings(idl: idls))
    print("Generating closure property wrappers...")
    contents.append(try IDLBuilder.generateClosureTypes())
    print("Generating JSString constants...")
    contents.append(try IDLBuilder.generateStrings())
    print("Generating union protocols...")
    contents.append(try IDLBuilder.generateUnions())
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
