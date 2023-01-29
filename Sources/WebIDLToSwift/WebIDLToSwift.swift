import Foundation
import WebIDL

private enum Mode: String {
    case noPatch = "no-patch"
}

@main
enum WebIDLToSwift {
    static let group = DispatchGroup()

    static func main() {
        do {
            let mode = parseArgs()
            let packageDir = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent()
            let domIDL = try [baseModule, domModule].flatMap { try IDLParser.parseIDL(modules: $0.idlModules) }
            let domTypes = DeclarationMerger.merge(declarations: domIDL.flatMap(\.array)).types

            // Collect closure patterns from all modules to subsequently write them together with `baseModule`.
            var closurePatterns = Set<ClosurePattern>()

            for module in modules {
                try generate(module, packageDir: packageDir, domTypes: domTypes, patch: mode != .noPatch)
                closurePatterns.formUnion(ModuleState.closurePatterns)
            }

            try generate(baseModule, packageDir: packageDir, shouldGenerateClosurePatterns: true, patch: mode != .noPatch)

            group.wait()

            try generateManifest([baseModule] + modules)
                .write(toFile: packageDir.appendingPathComponent("Package.swift").path, atomically: true, encoding: .utf8)
            print("Package.swift manifest successfully regenerated and updated on the filesystem.")
        } catch {
            handleDecodingError(error)
        }
    }

    private static func parseArgs() -> Mode? {
        var mode: Mode?
        for arg in CommandLine.arguments.dropFirst() {
            if arg.starts(with: "--") {
                if let parsed = Mode(rawValue: String(arg.dropFirst(2))) {
                    mode = parsed
                } else {
                    print("Unknown option: \(arg)")
                }
            } else {
                print("Unknown argument: \(arg)")
            }
        }
        return mode
    }

    private static func generate(
        _ module: Module,
        packageDir: URL,
        domTypes: [String: IDLTypealias] = [:],
        shouldGenerateClosurePatterns: Bool = false,
        patch: Bool
    ) throws {
        let startTime = Date()
        let idl = try IDLParser.parseIDL(modules: module.idlModules)

        let outputDir = packageDir
            .appendingPathComponent("Sources")
            .appendingPathComponent(module.swiftModule)

        print("Making sure that directory exists: \(outputDir.path)")
        try FileManager.default.createDirectory(at: outputDir, withIntermediateDirectories: true)

        let outputPath = outputDir.appendingPathComponent("Generated.swift").path
        var contents: [SwiftSource] = []
        contents.append(try IDLBuilder.generateIDLBindings(idl: idl, baseTypes: domTypes))
        if shouldGenerateClosurePatterns {
            contents.append(try IDLBuilder.generateClosureTypes())
        }
        try IDLBuilder.writeFile(
            path: outputPath,
            content: contents.joined(separator: "\n\n").source,
            moduleDependencies: module.dependencies
        )

        ModuleState.reset()

        group.enter()
        DispatchQueue.global().async {
            Shell.format(source: outputPath)
            if patch {
                Shell.patch(module: module)
            }
            group.leave()
        }
        print("Module \(module.swiftModule) done in \(Int(Date().timeIntervalSince(startTime) * 1000))ms.")
    }

    private static func handleDecodingError(_ error: Error) {
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

    private static func debugContext(_ ctx: DecodingError.Context) {
        print("Key path: <root>\(ctx.codingPath.map { "." + $0.stringValue }.joined())")
        print(ctx.debugDescription)
        if let underlying = ctx.underlyingError as NSError?,
           let debugDescription = underlying.userInfo["NSDebugDescription"]
        {
            print(debugDescription)
        }
    }
}
