import Foundation
import WebIDL

main()

func main() {
    do {
        let data = try Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)
        let idl = try JSONDecoder().decode([String: GenericCollection<IDLNode>].self, from: data)

        try IDLBuilder.cleanOutputFolder()
        try IDLBuilder.generateIDLBindings(idl: idl)
        try IDLBuilder.generateClosureTypes()
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
