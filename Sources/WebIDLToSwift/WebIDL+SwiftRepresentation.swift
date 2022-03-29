import WebIDL

extension IDLArgument: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "\(name): \(idlType)"
    }
}

extension IDLNamespace: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let this: SwiftSource = "JSObject.global.\(name).object!"
        let body = Context.withState(.static(this: this)) {
            members.map(toSwift).joined(separator: "\n")
        }
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
                    \(this)
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
        \(raw: Context.static ? "static" : "") func \(name!)(\(arguments.map(\.swiftRepresentation).joined(separator: ", "))) -> \(idlType!) {
            \(Context.this).\(name!)(\(arguments.map(\.name.swiftRepresentation).joined(separator: ", ")))
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
            fatalError("Union types are unsupported")
        }
    }
}
