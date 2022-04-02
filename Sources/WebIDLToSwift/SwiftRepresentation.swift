import WebIDL

protocol SwiftRepresentable {
    var swiftRepresentation: SwiftSource { get }
}

func toSwift<T>(_ value: T) -> SwiftSource {
    if let repr = value as? SwiftRepresentable {
        return repr.swiftRepresentation
    } else {
        let x = value as Any
        fatalError("Type \(String(describing: type(of: x))) has no Swift representation")
    }
}

extension String: SwiftRepresentable {
    private static let swiftKeywords: Set = [
        "init",
        "where",
        "protocol",
        "struct",
        "class",
        "enum",
        "func",
        "static",
        "is",
        "as",
        "default",
        "defer",
        "self",
        "repeat",
    ]

    var swiftRepresentation: SwiftSource {
        SwiftSource(Self.swiftKeywords.contains(self) ? "`\(self)`" : self)
    }
}
