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
        "as",
        "break",
        "class",
        "continue",
        "default",
        "defer",
        "enum",
        "func",
        "in",
        "init",
        "internal",
        "is",
        "operator",
        "private",
        "protocol",
        "public",
        "repeat",
        "self",
        "static",
        "struct",
        "where",
    ]

    var swiftRepresentation: SwiftSource {
        SwiftSource(Self.swiftKeywords.contains(self) ? "`\(self)`" : self)
    }
}
