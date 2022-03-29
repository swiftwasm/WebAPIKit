import Foundation
import WebIDL

do {
    let data = try Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)
    let idl = try JSONDecoder().decode([String: GenericCollection<IDLNode>].self, from: data)
    let declarations = ["dom", "hr-time", "html", "console"].flatMap { idl[$0]!.array }
    for (i, node) in merge(declarations: declarations).enumerated() {
        guard let name = Mirror(reflecting: node).children.first(where: { $0.label == "name" })?.value as? String else {
            fatalError("Cannot find name for \(node)")
        }
        let content = toSwift(node).source
        let path = "/Users/jed/Documents/github-clones/Tokamak/DOMKit/Sources/DOMKit/WebIDL/" + name + ".swift"
        if FileManager.default.fileExists(atPath: path) {
            fatalError("file already exists for \(name)")
        } else {
            try ("import JavaScriptKit\n\n" + content).write(toFile: path, atomically: true, encoding: .utf8)
        }
    }
//    for (name, nodes) in idl {
//        if name.starts(with: "WEBGL_") { continue }
//        for (i, node) in nodes.enumerated() {
//            print(toSwift(node).source)
//        }
//    }
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
