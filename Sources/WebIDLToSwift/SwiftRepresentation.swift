import WebIDL

protocol SwiftRepresentable {
    var swiftRepresentation: SwiftSource { get }
}

func toSwift<T>(_ value: T) -> SwiftSource {
    if let repr = (value as? SwiftRepresentable)?.swiftRepresentation {
        return repr
    } else {
        let x = value as Any
        fatalError("Type \(String(describing: type(of: x))) has no Swift representation")
    }
}

let swiftKeywords: [String: String] = [
    "init": "`init`",
    "where": "`where`",
    "protocol": "`protocol`",
    "struct": "`struct`",
    "class": "`class`",
    "enum": "`enum`",
    "func": "`func`",
    "static": "`static`",
    "is": "`is`",
]

extension String: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        SwiftSource(swiftKeywords[self] ?? self)
    }
}
