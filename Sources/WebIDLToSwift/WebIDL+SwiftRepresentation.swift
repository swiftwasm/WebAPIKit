import WebIDL

extension IDLArgument: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "\(name): \(idlType)"
    }
}

extension IDLAttribute: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        \(raw: Context.static ? "static" : "") var \(name): \(idlType) {
            // TODO
        }
        """
    }
}

extension IDLDictionary: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        public class \(name): JSObject {
            \(swiftInit)
            \(swiftMembers.joined(separator: "\n"))
        }
        """
    }

    private var swiftInit: SwiftSource {
        """
        convenience init(\(members.map { SwiftSource("\($0.name): \($0.idlType)") }.joined(separator: ", "))) {
            let object = JSObject.global.new()
            \(members.map { SwiftSource("object[\"\(raw: $0.name)\"] = \($0.name).jsValue()") }.joined(separator: "\n"))
            self = object
        }
        """
    }

    private var swiftMembers: [SwiftSource] {
        members.map {
            """
            var \($0.name): \($0.idlType) {
                get {
                    self["\(raw: $0.name)"].fromJSValue()
                }
                set {
                    self["\(raw: $0.name)"] = newValue.jsValue()
                }
            }
            """
        }
    }
}

extension IDLEnum: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        enum \(name) {
            \(raw: cases.map { "case \(SwiftSource($0).source)" }.joined(separator: "\n"))
        }
        """
    }
}

extension IDLInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let constructor: SwiftSource = "JSObject.global.\(name).function!"
        let body = Context.withState(.instance(constructor: constructor, this: "jsObject")) {
            members.map(toSwift).joined(separator: "\n")
        }
        if partial {
            assert(inheritance == nil)
            return """
            extension \(name) {
                \(body)
            }
            """
        } else {
            let requiredInit = """
            required init(unsafelyWrapping jsObject: JSObject) {
                self.jsObject = jsObject
            }
            """

            return """
            class \(name): \(inheritance ?? "JSBridgedClass") {
                static var constructor: JSFunction {
                    \(constructor)
                }

                let jsObject: JSObject
                \(inheritance == nil ? requiredInit : "")

                \(body)
            }
            """
        }
    }
}

extension IDLInterfaceMixin: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let this: SwiftSource = "JSObject.global.\(name).object!"
        let body = Context.withState(.static(this: this)) {
            members.map(toSwift).joined(separator: "\n")
        }
        return """
        extension \(name) {
            \(body)
        }
        """
    }
}

extension IDLConstructor: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        assert(!Context.static)
        return """
        convenience init(\(arguments.map(\.swiftRepresentation).joined(separator: ", "))) {
            self.init(unsafelyWrapping: \(Context.constructor).new(\(arguments.map(\.name.swiftRepresentation).joined(separator: ", "))))
        }
        """
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
        if special.isEmpty {
            let params = arguments.map(\.swiftRepresentation).joined(separator: ", ")
            let args = arguments.map(\.name.swiftRepresentation).joined(separator: ", ")
            return """
            \(raw: Context.static ? "static" : "") func \(name!)(\(params)) -> \(idlType!) {
                \(Context.this).\(name!)(\(args)).fromJSValue()
            }
            """
        } else {
            switch special {
            case "stringifier":
                return """
                var description: String {
                    \(Context.this).toString().fromJSValue()
                }
                """
            default:
                fatalError("Unsupported special operation \(special)")
            }
        }
    }
}

let typeNameMap = [
    "boolean": "Bool",
    "any": "Any",
    "DOMString": "String",
    "object": "JSObject",
    "undefined": "Void",
    "double": "Double",
    "unrestricted double": "Double",
]

extension IDLType: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        switch value {
        case let .generic(name, args):
            switch name {
            case "sequence":
                return "[\(args[0])]"
            case "Promise":
                // TODO: async
                return "JSPromise"
            default:
                fatalError("Unsupported generic type: \(name)")
            }
        case let .single(name):
            if let typeName = typeNameMap[name] {
                return "\(typeName)"
            } else {
                print("Unsupported type: \(name)")
                return "\(name)"
            }
        case let .union(types):
            fatalError("Union types are unsupported")
        }
    }
}

extension IDLTypedef: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "typealias \(name) = \(idlType)"
    }
}
