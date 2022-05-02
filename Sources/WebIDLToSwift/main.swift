import Foundation
import WebIDL

main()

func main() {
    do {
        let startTime = Date()
        let idl = try IDLParser.parseIDL()
        var contents: [SwiftSource] = []
        print("Generating bindings...")
        contents.append(try IDLBuilder.generateIDLBindings(idl: idl))
        print("Generating closure property wrappers...")
        contents.append(try IDLBuilder.generateClosureTypes())
        print("Generating JSString constants...")
        contents.append(try IDLBuilder.generateStrings())
        print("Generating union protocols...")
        contents.append(try IDLBuilder.generateUnions())

        try IDLBuilder.writeFile(named: "Generated", content: contents.joined(separator: "\n\n").source)

        SwiftFormatter.run()
        print("Done in \(Int(Date().timeIntervalSince(startTime) * 1000))ms.")
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
