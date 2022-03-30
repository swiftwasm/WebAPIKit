import Foundation
import WebIDL

let ignored: [String: Set<String>] = [
    // functions as parameters are unsupported
    "EventTarget": ["addEventListener", "removeEventListener"],
    "HTMLCanvasElement": ["toBlob"],
    "AnimationFrameProvider": ["requestAnimationFrame"],
    "DataTransferItem": ["getAsString"],
    "WindowOrWorkerGlobalScope": ["queueMicrotask"],
    "MutationObserver": ["<constructor>"],
    // functions as return types are unsupported
    "CustomElementRegistry": ["define", "whenDefined"],
    // NodeFilter
    "Document": ["createNodeIterator", "createTreeWalker"],
    "TreeWalker": ["filter"],
    "NodeIterator": ["filter"],
    // invalid overload in Swift
    "BeforeUnloadEvent": ["returnValue"],
    // XPathNSResolver
    "XPathEvaluatorBase": ["createExpression", "createNSResolver", "evaluate"],
]

let preamble = """
// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptKit
import JavaScriptEventLoop
\n
"""

let outDir = "Sources/DOMKit/WebIDL/"

func writeFile(named name: String, content: String) throws {
    let path = outDir + name + ".swift"
    if FileManager.default.fileExists(atPath: path) {
        fatalError("file already exists for \(name)")
    } else {
        try (preamble + content).write(toFile: path, atomically: true, encoding: .utf8)
    }
}

func cleanOutputFolder() throws {
    for file in try FileManager.default.contentsOfDirectory(atPath: outDir) {
        try FileManager.default.removeItem(atPath: outDir + file)
    }
}

func generateIDLBindings(idl: [String: GenericCollection<IDLNode>]) throws {
    let declarations = [
        "dom", "hr-time", "html", "console", "FileAPI", "geometry", "webidl", "fetch", "xhr",
        "referrer-policy", "uievents", "wai-aria", "cssom", "css-conditional", "streams",
    ].flatMap { idl[$0]!.array }
    let merged = merge(declarations: declarations)
    for (i, node) in merged.declarations.enumerated() {
        guard let name = Mirror(reflecting: node).children.first(where: { $0.label == "name" })?.value as? String else {
            fatalError("Cannot find name for \(node)")
        }
        let content = Context.withState(.root(interfaces: merged.interfaces, ignored: ignored, types: merged.types)) {
            toSwift(node).source
        }
        try writeFile(named: name, content: content)
    }
}

func generateClosureTypes() throws {
    let argCounts = Context.requiredClosureArgCounts.sorted()
    let closureTypesContent: SwiftSource = """
    /* variadic generics please */
    public enum ClosureAttribute {
        // MARK: Required closures
        \(lines: argCounts.map { ClosureWrapper(nullable: false, argCount: $0).swiftRepresentation })

        // MARK: - Optional closures
        \(lines: argCounts.map { ClosureWrapper(nullable: true, argCount: $0).swiftRepresentation })
    }
    """

    try writeFile(named: "ClosureAttribute", content: closureTypesContent.source)
}

do {
    let data = try Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)
    let idl = try JSONDecoder().decode([String: GenericCollection<IDLNode>].self, from: data)

    try cleanOutputFolder()
    try generateIDLBindings(idl: idl)
    try generateClosureTypes()
} catch {
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
