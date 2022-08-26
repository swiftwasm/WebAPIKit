import Foundation
import WebIDL

main()

func main() {
    do {
        let packageDir = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .deletingLastPathComponent()

        let domIDL = try [baseModule, domModule].flatMap { try IDLParser.parseIDL(modules: $0.idlModules) }
        let domTypes = DeclarationMerger.merge(declarations: domIDL.flatMap(\.array)).types

        for module in modules {
            let startTime = Date()
            let idl = try IDLParser.parseIDL(modules: module.idlModules)

            let outputDir = packageDir
                .appendingPathComponent("Sources")
                .appendingPathComponent(module.swiftModule)

            print("Making sure that directory exists: \(outputDir.path)")
            try FileManager.default.createDirectory(at: outputDir, withIntermediateDirectories: true)

            let outputPath = outputDir.appendingPathComponent("Generated.swift").path
            var contents: [SwiftSource] = []
            print("Generating bindings...")
            contents.append(try IDLBuilder.generateIDLBindings(idl: idl))
            print("Generating closure property wrappers...")
            contents.append(try IDLBuilder.generateClosureTypes())
            print("Generating JSString constants...")
            contents.append(try IDLBuilder.generateStrings())
            print("Generating union protocols...")
            contents.append(try IDLBuilder.generateUnions())
            try IDLBuilder.writeFile(
                path: outputPath,
                content: contents.joined(separator: "\n\n").source,
                moduleDependencies: module.dependencies
            )

            SwiftFormatter.run(source: outputPath)
            print("Module \(module.swiftModule) done in \(Int(Date().timeIntervalSince(startTime) * 1000))ms.")
        }

        try generateManifest(modules)
            .write(toFile: packageDir.appendingPathComponent("Package.swift").path, atomically: true, encoding: .utf8)
        print("Package.swift manifest successfully regenerated and updated on the filesystem.")
    } catch {
        handleDecodingError(error)
    }
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
