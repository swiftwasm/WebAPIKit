import Foundation
import WebIDL

do {
    let data = try Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)
    let idl = try JSONDecoder().decode([String: GenericCollection<IDLNode>].self, from: data)
    for (i, node) in idl["dom"]!.enumerated() {
        let name = Mirror(reflecting: node).children.first { $0.label == "name" }?.value as? String
        print(toSwift(node).source)
    }
//    for (name, nodes) in idl {
//        if name.starts(with: "WEBGL_") { continue }
//        for (i, node) in nodes.enumerated() {
//            print(toSwift(node).source)
//        }
//    }
} catch {
    switch error as? DecodingError {
    case .dataCorrupted(let ctx), .typeMismatch(_, let ctx):
        debugContext(ctx)
    case .valueNotFound(let type, let ctx):
        print("Value of type \(type) not found")
        debugContext(ctx)
    case .keyNotFound(let key, let ctx):
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
       let debugDescription = underlying.userInfo["NSDebugDescription"] {
        print(debugDescription)
    }
}
