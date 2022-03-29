import Foundation
import WebIDL

do {
    let data = try Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)
    let idl = try JSONDecoder().decode([String: GenericCollection<IDLNode>].self, from: data)
    for (i, node) in (idl["dom"]!.array + idl["hr-time"]!.array).enumerated() {
        let name = Mirror(reflecting: node).children.first { $0.label == "name" }?.value as? String
        if let name = name {
            let content = "import JavaScriptKit\n\n" + toSwift(node).source
            let path = "/Users/jed/Documents/github-clones/Tokamak/DOMKit/Sources/DOMKit/WebIDL/" + name + ".swift"
            try content.write(toFile: path, atomically: true, encoding: .utf8)
        } else if !(node is IDLIncludes) {
            print(Mirror(reflecting: node).children.map(\.label))
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
