import WebIDL

extension IDLArgument: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let type: SwiftSource = variadic ? "\(idlType)..." : "\(idlType)"
        if optional {
            if idlType.nullable {
                return "\(name: name): \(type) = nil"
            } else {
                return "\(name: name): \(type)? = nil"
            }
        } else {
            return "\(name: name): \(type)"
        }
    }
}

extension IDLAttribute: SwiftRepresentable, Initializable {
    private var wrapperName: SwiftSource {
        "_\(raw: name)"
    }

    var swiftRepresentation: SwiftSource {
        assert(!Context.static)
        if Context.override {
            // can't do property wrappers on override declarations
            return """
            private var \(wrapperName): \(idlType.propertyWrapper(readonly: readonly))<\(idlType)>
            override public var \(name: name): \(idlType) {
                get { \(wrapperName).wrappedValue }
                \(readonly ? "" : "set { \(wrapperName).wrappedValue = newValue }")
            }
            """
        } else if Context.constructor == nil {
            // can't do property wrappers on extensions
            let setter: SwiftSource = """
            set { \(idlType.propertyWrapper(readonly: readonly))[\(quoted: name), in: jsObject] = newValue }
            """

            return """
            public var \(name: name): \(idlType) {
                get { \(idlType.propertyWrapper(readonly: readonly))[\(quoted: name), in: jsObject] }
                \(readonly ? "" : setter)
            }
            """
        } else {
            return """
            @\(idlType.propertyWrapper(readonly: readonly))
            public var \(name: name): \(idlType)
            """
        }
    }

    var initializer: SwiftSource? {
        assert(!Context.static)
        return """
        \(wrapperName) = \(idlType.propertyWrapper(readonly: readonly))(jsObject: jsObject, name: \(quoted: name))
        """
    }
}

extension MergedDictionary: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        public class \(name: name): BridgedDictionary {
            \(swiftInit)
            \(swiftMembers.joined(separator: "\n\n"))
        }
        """
    }

    private var membersWithPropertyWrapper: [(IDLDictionary.Member, SwiftSource)] {
        members.map {
            ($0, $0.idlType.propertyWrapper(readonly: false))
        }
    }

    private var swiftInit: SwiftSource {
        let params: [SwiftSource] = members.map {
            "\(name: $0.name): \($0.idlType.isFunction ? "@escaping " : "")\($0.idlType)"
        }
        return """
        public convenience init(\(sequence: params)) {
            let object = JSObject.global.Object.function!.new()
            \(lines: membersWithPropertyWrapper.map { member, wrapper in
                if member.idlType.isFunction {
                    return """
                    \(wrapper)[\(quoted: member.name), in: object] = \(name: member.name)
                    """
                } else {
                    return """
                    object[\(quoted: member.name)] = \(name: member.name).jsValue()
                    """
                }
            })
            self.init(unsafelyWrapping: object)
        }

        public required init(unsafelyWrapping object: JSObject) {
            \(lines: membersWithPropertyWrapper.map { member, wrapper in
                "_\(raw: member.name) = \(wrapper)(jsObject: object, name: \(quoted: member.name))"
            })
            super.init(unsafelyWrapping: object)
        }
        """
    }

    private var swiftMembers: [SwiftSource] {
        membersWithPropertyWrapper.map { member, wrapper in
            """
            @\(wrapper)
            public var \(name: member.name): \(member.idlType)
            """
        }
    }
}

extension IDLEnum: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        public enum \(name: name): JSString, JSValueCompatible {
            \(lines: cases.map { "case \(name: $0.camelized) = \(quoted: $0)" })

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
        Context.requiredClosureArgCounts.insert(arguments.count)
        return """
        public typealias \(name: name) = (\(sequence: arguments.map {
            "\($0.idlType.swiftRepresentation)\($0.variadic ? "..." : "")"
        })) -> \(idlType)
        """
    }
}

extension IDLCallbackInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "// XXX: unsupported callback interface: \(raw: name)"
    }
}

protocol Initializable {
    var initializer: SwiftSource? { get }
}

extension MergedInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let constructor: SwiftSource = "JSObject.global.\(name: name).function!"
        let body = Context.withState(.instance(constructor: constructor, this: "jsObject", className: "\(name: name)")) {
            members.map { member in
                let isOverride: Bool
                if let memberName = (member as? IDLNamed)?.name {
                    if Context.ignored[name]?.contains(memberName) ?? false {
                        return "// XXX: member '\(raw: memberName)' is ignored"
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
        let initialize: SwiftSource = parentClasses.isEmpty
            ? "self.jsObject = jsObject"
            : "super.init(unsafelyWrapping: jsObject)"
        return """
        public class \(name: name): \(sequence: inheritance.map(SwiftSource.init(_:))) {
            public\(parentClasses.isEmpty ? "" : " override") class var constructor: JSFunction { \(constructor) }

            \(parentClasses.isEmpty ? "public let jsObject: JSObject" : "")

            public required init(unsafelyWrapping jsObject: JSObject) {
                \(memberInits.joined(separator: "\n"))
                \(initialize)
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
        Context.withState(.instance(constructor: nil, this: "jsObject", className: "\(name: name)")) {
            """
            public protocol \(name: name): JSBridgedClass {}
            public extension \(name: name) {
                \(members.map(toSwift).joined(separator: "\n\n"))
            }
            """
        }
    }
}

extension IDLConstant: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        """
        public static let \(name: name): \(idlType) = \(value)
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLConstructor: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        assert(!Context.static)
        if Context.ignored[Context.className.source]?.contains("<constructor>") ?? false {
            return "// XXX: constructor is ignored"
        }
        let args: [SwiftSource] = arguments.map {
            "\(name: $0.name)\($0.optional ? "?" : "").jsValue() \($0.optional ? " ?? .undefined" : "")"
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
        if async {
            return """
            public typealias Element = \(idlType[0])
            @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
            public func makeAsyncIterator() -> ValueIterableAsyncIterator<\(Context.className)> {
                ValueIterableAsyncIterator(sequence: self)
            }
            """
        } else {
            return """
            public typealias Element = \(idlType[0])
            public func makeIterator() -> ValueIterableIterator<\(Context.className)> {
                ValueIterableIterator(sequence: self)
            }
            """
        }
    }

    var initializer: SwiftSource? { nil }
}

extension MergedNamespace: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let this: SwiftSource = "JSObject.global.\(name: name).object!"
        let body = Context.withState(.static(this: this, inClass: false, className: "\(name: name)")) {
            members.map(toSwift).joined(separator: "\n\n")
        }
        return """
        public enum \(name: name) {
            public static var jsObject: JSObject {
                \(this)
            }

            \(body)
        }
        """
    }
}

extension IDLOperation: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        if Context.ignored[Context.className.source]?.contains(name) ?? false {
            return """
            // XXX: method '\(raw: name)' is ignored
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
                var keyType = toSwift(arguments[0].idlType)
                if keyType == "UInt32" {
                    keyType = "Int"
                }
                return """
                public subscript(key: \(keyType)) -> \(idlType!) {
                    jsObject[key].fromJSValue()\(idlType!.nullable ? "" : "!")
                }
                """
            case "setter":
                return "// XXX: unsupported setter for keys of type \(arguments[0].idlType.swiftRepresentation)"
            case "deleter":
                return "// XXX: unsupported deleter for keys of type \(arguments[0].idlType.swiftRepresentation)"
            default:
                fatalError("Unsupported special operation \(special)")
            }
        }
    }

    fileprivate var defaultBody: (prep: SwiftSource, call: SwiftSource) {
        let args: [SwiftSource]
        let prep: [SwiftSource]
        if arguments.count <= 5 {
            args = arguments.map { arg in
                if arg.optional {
                    return "\(name: arg.name)?.jsValue() ?? .undefined"
                } else {
                    return "\(name: arg.name).jsValue()"
                }
            }
            prep = []
        } else {
            args = (0 ..< arguments.count).map { "_arg\(raw: String($0))" }
            prep = zip(arguments, args).map { arg, name in
                if arg.optional {
                    return "let \(name) = \(name: arg.name)?.jsValue() ?? .undefined"
                } else {
                    return "let \(name) = \(name: arg.name).jsValue()"
                }
            }
        }

        return (
            prep: "\(lines: prep)",
            call: "\(Context.this)[\(quoted: name)]!(\(sequence: args))"
        )
    }

    fileprivate var nameAndParams: SwiftSource {
        let accessModifier: SwiftSource = Context.static ? (Context.inClass ? " class" : " static") : ""
        let overrideModifier: SwiftSource = Context.override ? "override " : ""
        return """
        \(overrideModifier)public\(accessModifier) func \(name: name)(\(sequence: arguments.map(\.swiftRepresentation)))
        """
    }

    private var defaultRepresentation: SwiftSource {
        var returnType = idlType!.swiftRepresentation
        if returnType == Context.className {
            returnType = "Self"
        }
        if Context.override, Context.static {
            return """
            // XXX: illegal static override
            // \(nameAndParams) -> \(returnType)
            """
        }

        let (prep, call) = defaultBody

        let body: SwiftSource
        if idlType?.swiftRepresentation.source == "Void" {
            body = "_ = \(call)"
        } else {
            body = "return \(call).fromJSValue()!"
        }

        return """
        \(nameAndParams) -> \(returnType) {
            \(prep)
            \(body)
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension AsyncOperation: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        if Context.ignored[Context.className.source]?.contains(name) ?? false {
            // covered by non-async operation
            return ""
        }
        assert(operation.special.isEmpty)
        if Context.override, Context.static {
            return """
            // XXX: illegal static override
            // \(operation.nameAndParams) async -> \(returnType)
            """
        }

        let (prep, call) = operation.defaultBody
        let result: SwiftSource
        if returnType.swiftRepresentation.source == "Void" {
            result = "_ = try await _promise.get()"
        } else {
            result = "return try await _promise.get().fromJSValue()!"
        }
        return """
        @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
        \(operation.nameAndParams) async throws -> \(returnType) {
            \(prep)
            let _promise: JSPromise = \(call).fromJSValue()!
            \(result)
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLType: SwiftRepresentable {
    private static let typeNameMap = [
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
        "Function": "JSFunction",
    ]

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
                return "JSPromise"
            case "record":
                return "[\(args[0]): \(args[1])]"
            default:
                fatalError("Unsupported generic type: \(name)")
            }
        case let .single(name):
            if let typeName = Self.typeNameMap[name] {
                return "\(name: typeName)"
            } else {
                if name == name.lowercased() {
                    fatalError("Unsupported type: \(name)")
                }
                return "\(name: name)"
            }
        case let .union(types):
            // print("union", types.count)
            return "__UNSUPPORTED_UNION__"
        }
    }

    var isFunction: Bool {
        if case let .single(name) = value {
            if Context.types[name] is IDLCallback {
                return true
            }
            if let ref = Context.types[name] as? IDLTypedef,
               case let .single(name) = ref.idlType.value,
               Context.types[name] is IDLCallback
            {
                assert(ref.idlType.nullable)
                return true
            }
        }
        return false
    }

    func propertyWrapper(readonly: Bool) -> SwiftSource {
        // TODO: handle readonly closure properties
        // (should they be a JSFunction? or a closure? or something else?))
        if case let .single(name) = value {
            let readonlyComment: SwiftSource = readonly ? " /* XXX: should be readonly! */ " : ""
            if let callback = Context.types[name] as? IDLCallback {
                return "ClosureAttribute.Required\(raw: String(callback.arguments.count))\(readonlyComment)"
            }
            if let ref = Context.types[name] as? IDLTypedef,
               case let .single(name) = ref.idlType.value,
               let callback = Context.types[name] as? IDLCallback
            {
                assert(ref.idlType.nullable)
                return "ClosureAttribute.Optional\(raw: String(callback.arguments.count))\(readonlyComment)"
            }
        }

        if readonly {
            return "ReadonlyAttribute"
        } else {
            return "ReadWriteAttribute"
        }
    }
}

extension IDLTypedef: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        "public typealias \(name: name) = \(idlType)"
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
            return .raw(String(value))
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
