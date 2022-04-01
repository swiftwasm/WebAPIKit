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
