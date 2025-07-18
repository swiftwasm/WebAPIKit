import Foundation
import WebIDL

enum IDLBuilder {
    static let basicDependencies = ["ECMAScript", "JavaScriptKit"]
    static let optionalDependencies = ["JavaScriptEventLoop", "_Concurrency"]

    static let preamble = """
    // This file was auto-generated by WebIDLToSwift. DO NOT EDIT!


    """

    static let ignoredNames: Set = [
        // dictionaries that depend on types not exposed to Window environments
        "BreakTokenOptions", "TrustedTypePolicyOptions", "FragmentResultOptions",
        "Client_or_MessagePort_or_ServiceWorker", "ExtendableMessageEventInit",
        // redundant unions
        "CSSColorValue_or_CSSStyleValue",
        // need types from specs not yet included
        "ShadowAnimation", "Blob_or_MediaSource",
        "HTMLOrSVGImageElement", "HTMLOrSVGScriptElement", "BodyInit",
        // Need better callback interface support
        "NodeFilter",
        "XPathNSResolver",
        // implemented manually
        // ArrayBufferView
        "BigInt64Array_or_BigUint64Array_or_DataView_or_Float32Array_or_Float64Array_or_Int16Array_or_Int32Array_or_Int8Array_or_Uint16Array_or_Uint32Array_or_Uint8Array_or_Uint8ClampedArray",
        // RotationMatrixType
        "DOMMatrix_or_Float32Array_or_Float64Array",
        "RenderingContext",
        "OffscreenRenderingContext",
        "OffscreenRenderingContextId",
    ]

    static func writeFile(path: String, content: String, moduleDependencies: [String]) throws {
        if FileManager.default.fileExists(atPath: path) {
            try FileManager.default.removeItem(atPath: path)
        }

        var dependencies = basicDependencies + moduleDependencies
        if content.contains(" Int64") || content.contains(" UInt64") {
            dependencies.append("JavaScriptBigIntSupport")
        }

        let formedPreamble = preamble + (optionalDependencies.map { """
        #if canImport(\($0))
            import \($0)
        #endif
        """ } + dependencies.map { "import \($0)" }).joined(separator: "\n")

        try (formedPreamble + "\n\n" + content).write(toFile: path, atomically: true, encoding: .utf8)
    }

    static func generateIDLBindings(idl: [GenericCollection<IDLNode>], baseTypes: [String: IDLTypealias]) throws -> SwiftSource {
        print("Generating bindings...")
        let declarations = idl.flatMap(\.array)
        let merged = DeclarationMerger.merge(declarations: declarations)
        var contents: [SwiftSource] = []

        var state = ScopedState.root(
            dictionaries: merged.dictionaries,
            interfaces: merged.interfaces,
            ignored: [
                // variadic callbacks are unsupported
                "TrustedTypePolicyFactory": ["createPolicy"],
                // NodeFilter
                "Document": ["createNodeIterator", "createTreeWalker"],
                "NodeIterator": ["filter"],
                "TreeWalker": ["filter"],
                // XPathNSResolver
                "XPathEvaluatorBase": ["createExpression", "createNSResolver", "evaluate"],
                // manually implemented
                "HTMLCanvasElement": ["getContext"],
                "OffscreenCanvas": ["getContext"],
                // [Exposed] is unsupported, manually disable affected symbols:
                "FileSystemFileHandle": ["createSyncAccessHandle"],
            ],
            types: merged.types
        )
        state.add(types: baseTypes)

        try ModuleState.withScope(state) {
            for node in merged.declarations.sorted(by: { $0.name < $1.name }) {
                if ignoredNames.contains(node.name) {
                    continue
                }

                contents.append(toSwift(node))
            }
            try contents.append(IDLBuilder.generateStrings())
            try contents.append(IDLBuilder.generateUnions())
        }
        return "\(lines: contents)"
    }

    static func generateClosureTypes() throws -> SwiftSource {
        print("Generating closure wrappers...")
        return """
        \(lines: ModuleState.closurePatterns.sorted().map(\.swiftRepresentation))
        """
    }

    static func generateStrings() throws -> SwiftSource {
        print("Generating JSString constants...")

        let strings = ModuleState.strings.sorted()
        return """
            @usableFromInline enum Strings {
                @usableFromInline static let _self: JSString = "self"
                \(lines: strings.map { "@usableFromInline static let `\(raw: $0)`: JSString = \(quoted: $0)" })
            }
        """
    }

    static func generateUnions() throws -> SwiftSource {
        print("Generating union protocols...")
        var contents: [SwiftSource] = []
        for union in ModuleState.unions.sorted(by: { $0.name < $1.name }) {
            guard !ignoredNames.contains(union.name) else { continue }
            contents.append(union.swiftRepresentation)
        }
        return "\(lines: contents)"
    }
}
