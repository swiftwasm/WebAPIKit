import WebIDL

extension IDLArgument: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "\(name): \(idlType)"
    }
}

extension IDLNamespace: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let body = members.map { "static \(toSwift($0))" }.joined(separator: "\n")
        if partial {
            return """
            extension \(name) {
                \(body)
            }
            """
        } else {
            return """
            public enum \(name) {
                public static var jsObject: JSObject {
                    JSObject.global.\(name).object!
                }

                \(body)
            }
            """
        }
    }
}

extension IDLOperation: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        func \(name!)(\(arguments.map(\.swiftRepresentation).joined(separator: ", "))) -> \(idlType) {
            // TODO
        }
        """
    }
}

let typeNameMap = [
    "boolean": "Bool",
    "any": "Any",
    "DOMString": "String",
    "object": "JSObject",
    "undefined": "Void",
]

extension IDLType: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        switch value {
        case let .generic(name, args):
            switch name {
            case "sequence":
                return "[\(args[0])]"
            default:
                fatalError("Unsupported generic type: \(name)")
            }
        case let .single(name):
            if let typeName = typeNameMap[name] {
                return "\(typeName)"
            } else {
                fatalError("Unsupported type \(name)")
            }
        case let .union(types):
            return "union(\(types.map(\.swiftRepresentation).joined(separator: ", ")))"
        }
    }
}
