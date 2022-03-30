import WebIDL

extension IDLArgument: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let type: SwiftSource = variadic ? "\(idlType)..." : "\(idlType)"
        if optional {
            if idlType.nullable {
                return "\(name): \(type) = nil"
            } else {
                return "\(name): \(type)? = nil"
            }
        } else {
            return "\(name): \(type)"
        }
    }
}

extension IDLAttribute: SwiftRepresentable, Initializable {
    var propertyWrapper: SwiftSource {
        if readonly {
            return "ReadonlyAttribute"
        }
        if case let .single(name) = idlType.value, name == "EventHandler" {
            return "OptionalClosureHandler"
        }
        return "ReadWriteAttribute"
    }

    var swiftRepresentation: SwiftSource {
        """
        @\(propertyWrapper)
        public\(raw: Context.static ? " static" : "") var \(name): \(idlType)
        """
    }

    var initializer: SwiftSource? {
        assert(!Context.static)
        return "_\(raw: name) = \(propertyWrapper)(jsObject: jsObject, name: \"\(raw: name)\")"
    }
}

extension MergedDictionary: SwiftRepresentable {
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
        public init(\(members.map { SwiftSource("\($0.name): \($0.idlType)") }.joined(separator: ", "))) {
            let object = JSObject.global.Object.function!.new()
            \(lines: members.map { "object[\"\(raw: $0.name)\"] = \($0.name).jsValue()" })
            \(lines: members.map { "_\(raw: $0.name) = ReadWriteAttribute(jsObject: object, name: \"\(raw: $0.name)\")" })
            super.init(cloning: object)
        }
        """
    }

    private var swiftMembers: [SwiftSource] {
        members.map {
            """
            @ReadWriteAttribute
            public var \($0.name): \($0.idlType)
            """
        }
    }
}

extension IDLEnum: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        public enum \(name): String, JSValueCompatible {
            \(lines: cases.map { name -> SwiftSource in
                "case \(name.camelized) = \"\(raw: name)\""
            })

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

protocol Initializable {
    var initializer: SwiftSource? { get }
}

extension MergedInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let constructor: SwiftSource = "JSObject.global.\(name).function!"
        let body = Context.withState(.instance(constructor: constructor, this: "jsObject")) {
            members.map(toSwift).joined(separator: "\n\n")
        }

        return """
        public class \(name): \(inheritance.isEmpty ? "JSBridgedClass" : inheritance.joined(separator: ", ")) {
            public\(inheritance.isEmpty ? "" : " override") class var constructor: JSFunction { \(constructor) }

            \(inheritance.isEmpty ? "public let jsObject: JSObject" : "")

            public required init(unsafelyWrapping jsObject: JSObject) {
                \(memberInits.joined(separator: "\n"))
                \(inheritance.isEmpty ? "self.jsObject = jsObject" : "super.init(unsafelyWrapping: jsObject)")
            }

            \(body)
        }
        """
    }

    var memberInits: [SwiftSource] {
        members.compactMap {
            if let alt = $0 as? Initializable {
                return alt.initializer
            } else {
                fatalError("Add Initializable conformance to \(Swift.type(of: $0))")
            }
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

extension IDLConstant: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        """
        public static let \(name): \(idlType) = \(value)
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLConstructor: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        assert(!Context.static)
        let params = arguments.map(\.swiftRepresentation).joined(separator: ", ")
        let args = arguments.map {
            let conversion: SwiftSource = "\($0.optional ? "?" : "").jsValue() \($0.optional ? " ?? .undefined" : "")"
            return SwiftSource("\($0.name)\(conversion)")
        }.joined(separator: ", ")
        return """
        public convenience init(\(params)) {
            self.init(unsafelyWrapping: Self.constructor.new(\(args)))
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLIterableDeclaration: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        """
        /* [make me iterable plz] */
        """
    }

    var initializer: SwiftSource? { nil }
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

extension IDLOperation: SwiftRepresentable, Initializable {
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
                return Context.withState(.static(this: "constructor")) {
                    defaultRepresentation
                }
            case "getter":
                return "/* unsupported getter for keys of type \(arguments[0].idlType.swiftRepresentation.source) */"
            case "setter":
                return "/* unsupported setter for keys of type \(arguments[0].idlType.swiftRepresentation.source) */"
            case "deleter":
                return "/* unsupported deleter for keys of type \(arguments[0].idlType.swiftRepresentation.source) */"
            default:
                fatalError("Unsupported special operation \(special)")
            }
        }
    }

    private var defaultRepresentation: SwiftSource {
        let params = arguments.map(\.swiftRepresentation).joined(separator: ", ")
        let args = arguments.map { arg -> SwiftSource in
            if arg.optional {
                return "\(arg.name)?.jsValue() ?? .undefined"
            } else {
                return "\(arg.name).jsValue()"
            }
        }.joined(separator: ", ")
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

    var initializer: SwiftSource? { nil }
}

let typeNameMap = [
    "boolean": "Bool",
    "any": "JSValue",
    "DOMString": "String",
    "USVString": "String",
    "ByteString": "String",
    "object": "JSObject",
    "undefined": "Void",
    "double": "Double",
    "unrestricted double": "Double",
    "unsigned short": "Double",
    "unsigned long": "Double",
    "unsigned long long": "Double",
    "short": "Double",
    "long": "Double",
    "long long": "Double",
]

extension IDLType: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        if nullable {
            return "\(baseType)?"
        }
        return baseType
    }

    var baseType: SwiftSource {
        switch value {
        case let .generic(name, args):
            switch name {
            case "sequence":
                return "[\(args[0])]"
            case "FrozenArray":
                // ???
                return "[\(args[0])]"
            case "Promise":
                // TODO: async
                return "JSPromise"
            case "record":
                return "[\(args[0]): \(args[1])]"
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
