import WebIDL

extension IDLArgument: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        if optional {
            return "\(name): \(idlType)? = nil"
        } else {
            return "\(name): \(idlType)"
        }
    }
}

extension IDLAttribute: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        @\(readonly ? "ReadonlyAttribute" : "ReadWriteAttribute")
        public\(raw: Context.static ? " static" : "") var \(name): \(idlType)
        """
    }
}

extension IDLDictionary: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        public class \(name): JSObject {
            \(swiftInit)
            \(swiftMembers.joined(separator: "\n\n"))
        }
        """
    }

    private var swiftInit: SwiftSource {
        """
        public convenience init(\(members.map { SwiftSource("\($0.name): \($0.idlType)") }.joined(separator: ", "))) {
            let object = JSObject.global.Object.function!.new()
            \(members.map { SwiftSource("object[\"\(raw: $0.name)\"] = \($0.name).jsValue()") }.joined(separator: "\n"))
            self = object
        }
        """
    }

    private var swiftMembers: [SwiftSource] {
        members.map {
            """
            public var \($0.name): \($0.idlType) {
                get {
                    self["\(raw: $0.name)"].fromJSValue()!
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
        public enum \(name): String, JSValueCompatible {
            \(raw: cases.map { "case \(SwiftSource($0).source)" }.joined(separator: "\n"))

            public static func construct(from jsValue: JSValue) -> \(name)? {
                if let string = jsValue.string {
                    return Self(rawValue: string)
                }
                return nil
            }

            public func jsValue() -> JSValue { rawValue.jsValue() }
        }
        """
    }
}

extension IDLCallback: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let args = arguments.map(\.idlType.swiftRepresentation).joined(separator: ", ")
        return """
        public typealias \(name) = (\(args)) -> \(idlType)
        """
    }
}

extension IDLCallbackInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "/* [unsupported callback interface: \(name)] */"
    }
}

extension IDLInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let constructor: SwiftSource = "JSObject.global.\(name).function!"
        let body = Context.withState(.instance(constructor: constructor, this: "jsObject")) {
            members.map(toSwift).joined(separator: "\n\n")
        }
        if partial {
            assert(inheritance == nil)
            return """
            public extension \(name) {
                \(body)
            }
            """
        } else {
            return """
            public class \(name): \(inheritance ?? "JSBridgedClass") {
                public\(inheritance == nil ? "" : " override") class var constructor: JSFunction { \(constructor) }

                \(inheritance == nil ? "public let jsObject: JSObject" : "")

                public required init(unsafelyWrapping jsObject: JSObject) {
                    \(inheritance == nil ? "self.jsObject = jsObject" : "super.init(unsafelyWrapping: jsObject)")
                }

                \(body)
            }
            """
        }
    }
}

extension IDLInterfaceMixin: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        // let this: SwiftSource = "JSObject.global.\(name).object!"
        // let body = Context.withState(.static(this: this)) {
        //     members.map(toSwift).joined(separator: "\n\n")
        // }
        // return """
        // extension \(name) {
        //     \(body)
        // }
        // """
        "/* [unsupported interface mixin: \(name)] */"
    }
}

extension IDLConstant: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        public static let \(name): \(idlType) = \(value)
        """
    }
}

extension IDLConstructor: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        assert(!Context.static)
        let params = arguments.map(\.swiftRepresentation).joined(separator: ", ")
        let args = arguments.map(\.name.swiftRepresentation).joined(separator: ", ")
        return """
        public convenience init(\(params)) {
            self.init(unsafelyWrapping: Self.constructor.new(\(args)))
        }
        """
    }
}

extension IDLIncludes: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        ""
        // """
        // // TODO: IDLIncludes (\(includes) from \(target))
        // """
    }
}

extension IDLIterableDeclaration: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        /* [make me iterable plz] */
        """
    }
}

extension IDLNamespace: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let this: SwiftSource = "JSObject.global.\(name).object!"
        let body = Context.withState(.static(this: this)) {
            members.map(toSwift).joined(separator: "\n\n")
        }
        if partial {
            return """
            public extension \(name) {
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
            return defaultRepresentation
        } else {
            switch special {
            case "stringifier":
                return """
                public var description: String {
                    \(Context.this)["toString"]!().fromJSValue()!
                }
                """
            case "static":
                return Context.withState(.static(this: Context.constructor)) {
                    defaultRepresentation
                }
            case "getter":
                return """
                public var \(name!): \(idlType!) {
                    \(Context.this)["\(raw: name!)"].fromJSValue()!
                }
                """
            default:
                fatalError("Unsupported special operation \(special)")
            }
        }
    }

    private var defaultRepresentation: SwiftSource {
        let params = arguments.map(\.swiftRepresentation).joined(separator: ", ")
        let args = arguments.map { SwiftSource("\($0.name.swiftRepresentation).jsValue()") }.joined(separator: ", ")
        let call: SwiftSource = "\(Context.this)[\"\(raw: name!)\"]!(\(args))"
        let body: SwiftSource
        if idlType?.swiftRepresentation.source == "Void" {
            body = "_ = \(call)"
        } else {
            body = "\(call).fromJSValue()!"
        }
        return """
        public\(raw: Context.static ? " static" : "") func \(name!)(\(params)) -> \(idlType!) {
            \(body)
        }
        """
    }
}

let typeNameMap = [
    "boolean": "Bool",
    "any": "JSValue",
    "DOMString": "String",
    "object": "JSObject",
    "undefined": "Void",
    "double": "Double",
    "unrestricted double": "Double",
    "unsigned short": "Double",
    "unsigned long": "Double",
    "unsigned long long": "Double",
    "short": "Double",
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
                if name == name.lowercased() {
                    fatalError("Unsupported type: \(name)")
                }
                return "\(name)"
            }
        case let .union(types):
            // print("union", types)
            return "__UNSUPPORTED_UNION__"
        }
    }
}

extension IDLTypedef: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "public typealias \(name) = \(idlType)"
    }
}

extension IDLValue: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        switch self {
        case let .string(value):
            return .raw(value)
        case let .number(value):
            return .raw(value)
        case let .boolean(value):
            return "\(value)"
        case .null:
            fatalError("`null` is not supported as a value in Swift")
        case let .infinity(negative):
            return negative ? "-.infinity" : ".infinity"
        case .nan:
            return ".nan"
        case .sequence:
            return "[]"
        case .dictionary:
            return "[:]"
        }
    }
}
