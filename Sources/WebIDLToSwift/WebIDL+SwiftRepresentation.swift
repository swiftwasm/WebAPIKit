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
    private var propertyWrapper: SwiftSource {
        if readonly {
            return "ReadonlyAttribute"
        }
        if case let .single(name) = idlType.value, ["EventHandler", "OnBeforeUnloadEventHandler"].contains(name) {
            return "OptionalClosureAttribute"
        }
        if case let .single(name) = idlType.value, name == "OnErrorEventHandler" {
            return "OnErrorEventHandlerAttribute"
        }
        return "ReadWriteAttribute"
    }

    private var wrapperName: SwiftSource {
        "_\(raw: name)"
    }

    var swiftRepresentation: SwiftSource {
        assert(!Context.static)
        if Context.override {
            // can't do property wrappers on override declarations
            return """
            private var \(wrapperName): \(propertyWrapper)<\(idlType)>
            override public var \(name): \(idlType) {
                get { \(wrapperName).wrappedValue }
                \(readonly ? "" : "set { \(wrapperName).wrappedValue = newValue }")
            }
            """
        } else if Context.constructor == nil {
            // can't do property wrappers on extensions
            return """
            public var \(name): \(idlType) {
                get { \(propertyWrapper)["\(raw: name)", in: jsObject] }
                \(readonly ? "" : "set { \(propertyWrapper)[\"\(raw: name)\", in: jsObject] = newValue }")
            }
            """
        } else {
            return """
            @\(propertyWrapper)
            public var \(name): \(idlType)
            """
        }
    }

    var initializer: SwiftSource? {
        assert(!Context.static)
        return "\(wrapperName) = \(propertyWrapper)(jsObject: jsObject, name: \"\(raw: name)\")"
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
        public init(\(sequence: members.map { "\($0.name): \($0.idlType)" })) {
            let object = JSObject.global.Object.function!.new()
            \(lines: members.map {
                """
                object["\(raw: $0.name)"] = \($0.name).jsValue()
                """
            })
            \(lines: members.map {
                """
                _\(raw: $0.name) = ReadWriteAttribute(jsObject: object, name: "\(raw: $0.name)")
                """
            })
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
            \(lines: cases.map { "case \($0.camelized) = \"\(raw: $0)\"" })

            public static func construct(from jsValue: JSValue) -> Self? {
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
        """
        public typealias \(name) = (\(sequence: arguments.map(\.idlType.swiftRepresentation))) -> \(idlType)
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
        let body = Context.withState(.instance(constructor: constructor, this: "jsObject", className: "\(name)")) {
            members.map { member in
                let isOverride: Bool
                if let memberName = (member as? IDLNamed)?.name {
                    if Context.ignored[name]?.contains(memberName) ?? false {
                        return "// [\(memberName) is ignored]"
                    }
                    isOverride = parentClasses.flatMap {
                        Context.interfaces[$0]?.members ?? []
                    }.contains {
                        memberName == ($0 as? IDLNamed)?.name
                    }
                } else {
                    isOverride = false
                }
                return Context.withState(.override(isOverride)) {
                    toSwift(member)
                }
            }.joined(separator: "\n\n")
        }

        let inheritance = (parentClasses.isEmpty ? ["JSBridgedClass"] : parentClasses) + mixins
        return """
        public class \(name): \(sequence: inheritance.map(SwiftSource.init(_:))) {
            public\(parentClasses.isEmpty ? "" : " override") class var constructor: JSFunction { \(constructor) }

            \(parentClasses.isEmpty ? "public let jsObject: JSObject" : "")

            public required init(unsafelyWrapping jsObject: JSObject) {
                \(memberInits.joined(separator: "\n"))
                \(parentClasses.isEmpty ? "self.jsObject = jsObject" : "super.init(unsafelyWrapping: jsObject)")
            }

            \(body)
        }
        """
    }

    var memberInits: [SwiftSource] {
        members.filter { member in
            if let ignored = Context.ignored[name],
               let memberName = (member as? IDLNamed)?.name
            {
                return !ignored.contains(memberName)
            } else {
                return true
            }
        }.compactMap {
            if let alt = $0 as? Initializable {
                return alt.initializer
            } else {
                fatalError("Add Initializable conformance to \(Swift.type(of: $0))")
            }
        }
    }
}

extension MergedMixin: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        Context.withState(.instance(constructor: nil, this: "jsObject", className: "\(name)")) {
            """
            public protocol \(name): JSBridgedClass {}
            public extension \(name) {
                \(members.map(toSwift).joined(separator: "\n\n"))
            }
            """
        }
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
        if Context.ignored[Context.className.source]?.contains("<constructor>") ?? false {
            return "// [constructor ignored]"
        }
        let args: [SwiftSource] = arguments.map {
            "\($0.name)\($0.optional ? "?" : "").jsValue() \($0.optional ? " ?? .undefined" : "")"
        }
        return """
        public convenience init(\(sequence: arguments.map(\.swiftRepresentation))) {
            self.init(unsafelyWrapping: Self.constructor.new(\(sequence: args)))
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLIterableDeclaration: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        assert(!async)
        return """
        public typealias Element = \(idlType[0])
        public func makeIterator() -> ValueIterableIterator<\(Context.className)> {
            ValueIterableIterator(sequence: self)
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLNamespace: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let this: SwiftSource = "JSObject.global.\(name).object!"
        let body = Context.withState(.static(this: this, inClass: false, className: "\(name)")) {
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
        if Context.ignored[Context.className.source]?.contains(name) ?? false {
            return """
            // [\(name) is ignored]
            """
        }
        if special.isEmpty {
            return defaultRepresentation
        } else {
            assert(!Context.static)
            switch special {
            case "stringifier":
                return """
                public var description: String {
                    \(Context.this)["toString"]!().fromJSValue()!
                }
                """
            case "static":
                return Context.withState(.static(this: "constructor", className: Context.className)) {
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
        let params = arguments.map(\.swiftRepresentation)
        let args: [SwiftSource]
        let argsInit: [SwiftSource]
        if arguments.count <= 5 {
            args = arguments.map { arg in
                if arg.optional {
                    return "\(arg.name)?.jsValue() ?? .undefined"
                } else {
                    return "\(arg.name).jsValue()"
                }
            }
            argsInit = []
        } else {
            args = (0 ..< arguments.count).map { "_arg\(String($0))" }
            argsInit = arguments.enumerated().map { i, arg in
                if arg.optional {
                    return "let _arg\(String(i)) = \(arg.name)?.jsValue() ?? .undefined"
                } else {
                    return "let _arg\(String(i)) = \(arg.name).jsValue()"
                }
            }
        }
        let call: SwiftSource = "\(Context.this)[\"\(raw: name)\"]!(\(sequence: args))"
        let body: SwiftSource
        if idlType?.swiftRepresentation.source == "Void" {
            body = "_ = \(call)"
        } else {
            body = "return \(call).fromJSValue()!"
        }
        let accessModifier: SwiftSource = Context.static ? (Context.inClass ? " class" : " static") : ""
        let overrideModifier: SwiftSource = Context.override ? "override " : ""
        var returnType = idlType!.swiftRepresentation
        if returnType == Context.className {
            returnType = "Self"
        }
        if Context.override, Context.static {
            return """
            // [illegal static override]
            // func \(name)(\(sequence: params)) -> \(returnType)
            """
        }
        return """
        \(overrideModifier)public\(accessModifier) func \(name)(\(sequence: params)) -> \(returnType) {
            \(lines: argsInit)
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
    "CSSOMString": "String",
    "ByteString": "String",
    "object": "JSObject",
    "undefined": "Void",
    "float": "Float",
    "double": "Double",
    "unrestricted double": "Double",
    "unsigned short": "UInt16",
    "unsigned long": "UInt32",
    "unsigned long long": "UInt64",
    "short": "Int16",
    "long": "Int32",
    "long long": "Int64",
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
            case "FrozenArray", "ObservableArray":
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
