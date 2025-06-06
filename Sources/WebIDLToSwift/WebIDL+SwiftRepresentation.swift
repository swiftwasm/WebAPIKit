import WebIDL

extension IDLArgument: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let type: SwiftSource
        if variadic {
            type = "\(idlType)..."
        } else if idlType.closurePattern != nil && !optional && !idlType.nullable {
            type = "@escaping \(idlType)"
        } else {
            type = "\(idlType)"
        }

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

extension IDLAttribute: SwiftRepresentable {
    private var wrapperName: SwiftSource {
        "_\(raw: name)"
    }

    var swiftRepresentation: SwiftSource {
        if ModuleState.ignored[ModuleState.className.source]?.contains(name) ?? false {
            return """
            // XXX: attribute '\(name)' is ignored
            """
        }
        if ModuleState.override {
            assert(!ModuleState.static)

            return ""
        } else {
            let stringKey = ModuleState.source(for: name)
            let getter: SwiftSource
            let setter: SwiftSource

            if let closure = idlType.closurePattern {
                getter = "get { \(closure.getter(name: stringKey)) }"
                setter = "set { \(closure.setter(name: stringKey)) }"
            } else {
                getter = "get { jsObject[\(stringKey)]\(idlType.fromJSValue) }"
                setter = "set { jsObject[\(stringKey)] = _toJSValue(newValue) }"
            }

            return """
                @inlinable public\(raw: ModuleState.static ? " static" : "") var \(name): \(idlType) {
                    \(getter)
                    \(readonly ? "" : setter)
                }
                """
        }
    }
}

extension IDLDictionary.Member {
    var isOptional: Bool {
        !required && !idlType.nullable
    }

    var optionalSuffix: String {
        isOptional ? "?" : ""
    }
}

extension IDLDictionary.Member: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        if ModuleState.override {
            assert(!ModuleState.static)
            return ""
        } else {
            let stringKey = ModuleState.source(for: name)
            let getter: SwiftSource
            let setter: SwiftSource

            if let closure = idlType.closurePattern {
                getter = "get { \(closure.getter(name: stringKey)) }"
                setter = "set { \(closure.setter(name: stringKey)) }"
            } else {
                getter = "get { jsObject[\(stringKey)]\(idlType.fromJSValue) }"
                setter = "set { jsObject[\(stringKey)] = _toJSValue(newValue) }"
            }

            return """
                @inlinable public\(raw: ModuleState.static ? " static" : "") var \(name): \(idlType) {
                    \(getter)
                    \(setter)
                }
                """
        }
    }
}

extension MergedDictionary: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let inheritanceClause: SwiftSource =
            if self.inheritance.isEmpty {
                ": JSDictionaryCompatible"
            } else {
                ": \(self.inheritance.joined(separator: ", "))"
            }

        return """
            open class \(name)\(inheritanceClause) {
                \(self.inheritance.isEmpty ? "public let jsObject: JSObject" : "")

                \(swiftInit)

                \(lines: self.members.map(\.swiftRepresentation))
            }
            """
    }

    private var convenienceInit: SwiftSource {
        let inheritedMembers: [IDLDictionary.Member] = self.inheritance.reduce(into: []) {
            // FIXME: if dictionary is not found in the current module, it's coming from a dependency,
            // but for now we have to skip it, since `ModuleState` doesn't seem to handle dependencies.
            return $0.append(contentsOf: ModuleState.dictionaries[$1]?.members ?? [])
        }

        let params: [SwiftSource] = (inheritedMembers + members).map {
            let escaping = if let closurePattern = $0.idlType.closurePattern {
                closurePattern.nullable || $0.isOptional ? "" : "@escaping "
            } else { "" }
            return "\($0.name): \(escaping)\($0.idlType)\($0.isOptional ? "? = nil" : "")"
        }

        return """
        public convenience init(\(sequence: params)) {
            let object = JSObject.global[\(ModuleState.source(for: "Object"))].function!.new()
            \(lines: (inheritedMembers + members).map { member in
                    return """
                    object[\(ModuleState.source(for: member.name))] = _toJSValue(\(member.name))
                    """
            })

            self.init(unsafelyWrapping: object)
        }
        """
    }

    private var swiftInit: SwiftSource {
        return """
            \(self.convenienceInit)

            public required init(unsafelyWrapping object: JSObject) {
                \(self.inheritance.isEmpty ? "self.jsObject = object" : "super.init(unsafelyWrapping: object)")
            }
            """
    }
}

extension IDLEnum: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        """
        public enum \(name): JSString, JSValueCompatible {
            \(lines: cases.map { "case \($0.camelized) = \(quoted: $0)" })

            @inlinable public static func construct(from jsValue: JSValue) -> Self? {
                if let string = jsValue.jsString {
                    return Self(rawValue: string)
                }
                return nil
            }

            @inlinable public init?(string: String) {
                self.init(rawValue: JSString(string))
            }

            @inlinable public var jsValue: JSValue { rawValue.jsValue }
        }
        """
    }
}

extension IDLCallback: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let isVoid = idlType.swiftRepresentation == "Void"
        ModuleState.add(closurePattern: ClosurePattern(nullable: false, void: isVoid, argCount: arguments.count))
        ModuleState.add(closurePattern: ClosurePattern(nullable: true, void: isVoid, argCount: arguments.count))
        return """
        public typealias \(name) = (\(sequence: arguments.map {
            "\($0.idlType)\($0.variadic ? "..." : "")"
        })) -> \(idlType)
        """
    }
}

extension IDLCallbackInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let operations = members.compactMap { $0 as? IDLOperation }
        precondition(operations.count == 1)
        let callback = operations[0]
        return """
        \(members.count > 1 ? "// XXX: members other than the operation are ignored" : "")
        public typealias \(name) = (\(sequence: callback.arguments.map {
            "\($0.idlType)\($0.variadic ? "..." : "")"
        })) -> \(callback.idlType!)
        """
    }
}

protocol Initializable {
    var initializer: SwiftSource? { get }
}

extension MergedInterface: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let constructor: SwiftSource = "JSObject.global[\(ModuleState.source(for: name))].function"
        let body = ModuleState.withScope(.instance(constructor: constructor, this: "jsObject", className: "\(name)")) {
            members.map { member in
                let isOverride: Bool
                if let memberName = (member as? IDLNamed)?.name {
                    if ModuleState.ignored[name]?.contains(memberName) ?? false {
                        return "// XXX: member '\(memberName)' is ignored"
                    }
                    isOverride = parentClasses.flatMap {
                        ModuleState.interfaces[$0]?.members ?? []
                    }.contains {
                        memberName == ($0 as? IDLNamed)?.name
                    }
                } else {
                    isOverride = false
                }
                return ModuleState.withScope(.override(isOverride)) {
                    toSwift(member)
                }
            }.joined(separator: "\n\n")
        }

        // Allow cross-module subclassing with `open` access modifier for classes that require this.
        let openClasses = [
            "DocumentFragment",
            "DOMException",
            "Element",
            "EventTarget",
            "Event",
            "Node",
            "ShadowRoot",
            "Worklet",
            "WebGLObject",
            "WritableStream",
        ]
        let access: SwiftSource = openClasses.contains(name) ? "open" : "public"

        let hasAsyncSequence: Bool
        let header: SwiftSource
        if partial {
            header = "public extension \(name)"
            hasAsyncSequence = false
        } else {
            let inheritance = (parentClasses.isEmpty ? ["JSBridgedClass"] : parentClasses) + mixins
                .filter { $0 != "AsyncSequence" }
            header = "\(access) class \(name): \(sequence: inheritance.map(SwiftSource.init(_:)))"
            hasAsyncSequence = mixins.contains { $0 == "AsyncSequence" }
        }

        return """
        \(header) {
            \(partial ? "" : """
                @inlinable \(access)\(parentClasses.isEmpty ? "" : " override") class var constructor: JSFunction? { \(constructor) }

                \(parentClasses.isEmpty ? "public let jsObject: JSObject" : "")

                \(global ? """
                    @inlinable public static var global: \(name) {
                        \(name)(unsafelyWrapping: JSObject.global)
                    }
                """ : "")

                public required init(unsafelyWrapping jsObject: JSObject) {
                    \(parentClasses.isEmpty ? "self.jsObject = jsObject" : "super.init(unsafelyWrapping: jsObject)")
                }
            """)

            \(body)
        }

        \(hasAsyncSequence ?
            """
            #if canImport(JavaScriptEventLoop)
            extension \(name): AsyncSequence {}
            #endif
            """ :
            ""
        )

        """
    }

    var memberInits: [SwiftSource] {
        members.filter { member in
            if let ignored = ModuleState.ignored[name],
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

extension IDLMapLikeDeclaration: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        "// XXX: make me Map-like!"
    }

    var initializer: SwiftSource? { nil }
}

extension IDLSetLikeDeclaration: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        "// XXX: make me Set-like!"
    }

    var initializer: SwiftSource? { nil }
}

extension MergedMixin: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        ModuleState.withScope(.instance(constructor: nil, this: "jsObject", className: "\(name)", inProtocol: true)) {
            """
            \(partial ? "" : "public protocol \(name): JSBridgedClass {}")
            public extension \(name) {
                \(members.map(toSwift).joined(separator: "\n\n"))
            }
            """
        }
    }
}

extension IDLConstant: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        if ModuleState.inProtocol {
            // Static stored properties not supported in protocol extensions
            return """
            @inlinable public static var \(name): \(idlType) { \(value) }
            """
        } else {
            return """
            public static let \(name): \(idlType) = \(value)
            """
        }
    }

    var initializer: SwiftSource? { nil }
}

extension IDLConstructor: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        assert(!ModuleState.static)
        assert(arguments.dropLast().allSatisfy { !$0.variadic })
        if ModuleState.ignored[ModuleState.className.source]?.contains("<constructor>") ?? false {
            return "// XXX: constructor is ignored"
        }
        let args: [SwiftSource] = arguments.map {
            "_toJSValue(\($0.name))"
        }
        let argsArray: SwiftSource
        if let last = arguments.last, last.variadic {
            precondition(!last.optional, "Optional variadic arguments not supported")
            let variadic: SwiftSource = "\(last.name).map(_toJSValue)"
            if args.count == 1 {
                argsArray = variadic
            } else {
                argsArray = "[\(sequence: args.dropLast())] + \(variadic)"
            }
        } else {
            argsArray = "[\(sequence: args)]"
        }
        return """
        @inlinable public convenience init(\(sequence: arguments.map(\.swiftRepresentation))) {
            self.init(unsafelyWrapping: Self.constructor!.new(arguments: \(argsArray)))
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLIterableDeclaration: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        if async {
            return """
            #if canImport(JavaScriptEventLoop)
            public typealias Element = \(idlType[0])
            @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
            public func makeAsyncIterator() -> ValueIterableAsyncIterator<\(ModuleState.className)> {
                ValueIterableAsyncIterator(sequence: self)
            }
            #endif
            """
        } else {
            return """
            public typealias Element = \(idlType[0])
            public func makeIterator() -> ValueIterableIterator<\(ModuleState.className)> {
                ValueIterableIterator(sequence: self)
            }
            """
        }
    }

    var initializer: SwiftSource? { nil }
}

extension MergedNamespace: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
        let this: SwiftSource = "JSObject.global[\(ModuleState.source(for: name))].object!"
        let body = ModuleState.withScope(.static(this: this, inClass: false, className: "\(name)")) {
            members.map(toSwift).joined(separator: "\n\n")
        }
        return """
        public enum \(name) {
            @inlinable public static var jsObject: JSObject {
                \(this)
            }

            \(body)
        }
        """
    }
}

extension IDLOperation: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        if ModuleState.ignored[ModuleState.className.source]?.contains(name) ?? false {
            return """
            // XXX: method '\(name)' is ignored
            """
        }
        if special.isEmpty {
            return defaultRepresentation
        } else {
            assert(!ModuleState.static)
            switch special {
            case "stringifier":
                return """
                @inlinable public var description: String {
                    \(ModuleState.this)[Strings.toString].function!().fromJSValue()!
                }
                """
            case "static":
                return ModuleState.withScope(.static(this: "constructor!", className: ModuleState.className)) {
                    defaultRepresentation
                }
            case "getter" where !name.isEmpty:
                return defaultRepresentation
            case "setter" where name.isEmpty:
                var keyType = arguments[0].idlType.swiftRepresentation
                if keyType.source == "UInt32" {
                    keyType = "Int"
                }
                let valueType = arguments[1].idlType
                let key: SwiftSource = keyType.swiftRepresentation.source == "UInt32" ? "Int(key)" : "key"
                let getterBody: SwiftSource
                if valueType.nullable {
                    getterBody = """
                    super[\(key)] as? \(valueType.baseType)
                    """
                } else {
                    getterBody = """
                    super[\(key)] as! \(valueType)
                    """
                }
                return """
                @inlinable public override subscript(key: \(keyType)) -> \(valueType) {
                    get {
                        \(getterBody)
                    }
                    set {
                        jsObject[\(key)] = _toJSValue(newValue)
                    }
                }
                """
            case "deleter":
                // Use Reflect.deleteProperty since `delete` would require wiring up a hook in JSKit,
                // and this is used rarely enough that perf should be irrelevant.
                return """
                @inlinable public func removeValue(forKey key: \(arguments[0].idlType)) {
                    _ = JSObject.global.Reflect.deleteProperty(jsObject, _toJSValue(key))
                }
                """
            default:
                fatalError("Unsupported special operation \(special)")
            }
        }
    }

    fileprivate var defaultBody: (prep: SwiftSource, call: SwiftSource) {
        assert(arguments.dropLast().allSatisfy { !$0.variadic })
        let args: [SwiftSource] = arguments.map { arg in
            "_toJSValue(\(arg.name))"
        }

        let argsArray: SwiftSource
        if let last = arguments.last, last.variadic {
            precondition(!last.optional, "Optional variadic arguments not supported")
            let variadic: SwiftSource = "\(last.name).map(_toJSValue)"
            if args.count == 1 {
                argsArray = variadic
            } else {
                argsArray = "[\(sequence: args.dropLast())] + \(variadic)"
            }
        } else {
            argsArray = "[\(sequence: args)]"
        }

        let function: SwiftSource = "this[\(ModuleState.source(for: name))].function!"
        return (
            prep: "let this = \(ModuleState.this)",
            call: "\(function)(this: this, arguments: \(argsArray))"
        )
    }

    fileprivate var nameAndParams: SwiftSource {
        let accessModifier: SwiftSource = ModuleState.static ? (ModuleState.inClass ? " class" : " static") : ""
        let overrideModifier: SwiftSource = if ModuleState.static && ModuleState.inClass {
            ModuleState.override ? "override " : ""
        } else {
            ModuleState.inClass && !ModuleState.current.inProtocol ? "final " : ""
        }
        return """
        \(overrideModifier)public\(accessModifier) func \(name)(\(sequence: arguments.map(\.swiftRepresentation)))
        """
    }

    private var defaultRepresentation: SwiftSource {
        guard let idlType = idlType else { fatalError() }

        // skip overrides, since ancestor functions are final and JS will do dynamic dispatch to overrides anyway
        // FIXME: still emit overrides that have a different number of arguments than an ancestor method, just without `override` keyword
        guard !ModuleState.override || ModuleState.static else {
            return ""
        }

        let returnType = idlType.swiftRepresentation
        if ModuleState.override, ModuleState.static, !ModuleState.inClass {
            preconditionFailure("Cannot override static method in non-class")
        }

        let (prep, call) = defaultBody

        let body: SwiftSource
        if idlType.swiftRepresentation.source == "Void" {
            body = "_ = \(call)"
        } else {
            body = "return \(call)\(idlType.fromJSValue)"
        }

        return """
        @inlinable \(nameAndParams) -> \(returnType) {
            \(prep)
            \(body)
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension AsyncOperation: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        if ModuleState.ignored[ModuleState.className.source]?.contains(name) ?? false {
            // covered by non-async operation
            return ""
        }
        switch operation.special {
        case "static":
            return ModuleState.withScope(.static(this: "constructor!", className: ModuleState.className)) {
                defaultRepresentation
            }
        case "":
            return defaultRepresentation
        default:
            fatalError("Unexpected special async operation of type \(operation.special)")
        }
    }

    var defaultRepresentation: SwiftSource {
        if ModuleState.override, ModuleState.static || operation.special == "static", !ModuleState.inClass {
            preconditionFailure("Cannot override static method in non-class")
        }

        let (prep, call) = operation.defaultBody
        let result: SwiftSource
        if returnType.swiftRepresentation.source == "Void" {
            result = "_ = try await _promise.value"
        } else {
            result = "return try await _promise.value\(returnType.fromJSValue)"
        }
        return """
        #if canImport(JavaScriptEventLoop)
        @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
        @inlinable \(operation.nameAndParams) async throws(JSException) -> \(returnType) {
            \(prep)
            let _promise: JSPromise = \(call).fromJSValue()!
            \(result)
        }
        #endif
        """
    }

    var initializer: SwiftSource? { nil }
}

extension SubscriptOperation: SwiftRepresentable, Initializable {
    var swiftRepresentation: SwiftSource {
        var keyType = toSwift(getter.arguments[0].idlType)
        if keyType == "UInt32" {
            keyType = "Int"
        }
        let idlType = getter.idlType!

        let getterSource: SwiftSource = "jsObject[key]\(idlType.fromJSValue)"

        if setter != nil {
            assert(setter!.arguments.count == 2)
            assert(setter!.arguments[0].idlType == getter.arguments[0].idlType)
            return """
            @inlinable public subscript(key: \(keyType)) -> \(idlType) {
                get {
                    \(getterSource)
                }
                set {
                    jsObject[key] = _toJSValue(newValue)
                }
            }
            """
        }

        return """
        @inlinable public subscript(key: \(keyType)) -> \(idlType) {
            \(getterSource)
        }
        """
    }

    var initializer: SwiftSource? { nil }
}

extension IDLType: SwiftRepresentable {
    static let typeNameMap = [
        "boolean": "Bool",
        "any": "JSValue",
        "DOMString": "String",
        "USVString": "String",
        "CSSOMString": "String",
        "ByteString": "String",
        "object": "JSObject",
        "undefined": "Void",
        "float": "Float", // must not be +/-.infinity or .nan
        "unrestricted float": "Float",
        "double": "Double", // must not be +/-.infinity or .nan
        "unrestricted double": "Double",
        "octet": "UInt8",
        "unsigned short": "UInt16",
        "unsigned long": "UInt32",
        "unsigned long long": "UInt64",
        "byte": "Int8",
        "short": "Int16",
        "long": "Int32",
        // FIXME: this maps to BigInt when bridged to JS, which most probably leads to issues.
        "long long": "Int64",
        "Function": "JSFunction",
        "bigint": "__UNSUPPORTED_BIGINT__",
    ]

    var swiftRepresentation: SwiftSource {
        if nullable {
            return "\(baseType)?"
        }
        return baseType
    }

    var fromJSValue: SwiftSource {
        if nullable {
            return ".fromJSValue()"
        } else {
            return ".fromJSValue()!"
        }
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
                return "JSObject"
            default:
                fatalError("Unsupported generic type: \(name)")
            }
        case let .single(name):
            if let typeName = Self.typeNameMap[name] {
                return "\(typeName)"
            } else {
                if name == name.lowercased() {
                    fatalError("Unsupported type: \(name)")
                }
                return "\(name)"
            }
        case let .union(types):
            if types.count == 2,
               case .single("undefined") = types[1].value
            {
                return "\(types[0])?"
            }
            return "\(unionName(types: Set(types.map(SlimIDLType.init))))"
        }
    }

    var isFunction: Bool {
        if case let .single(name) = value {
            if ModuleState.types[name] is IDLCallback {
                return true
            }
            if let ref = ModuleState.types[name] as? IDLTypedef,
               case let .single(name) = ref.idlType.value,
               ModuleState.types[name] is IDLCallback
            {
                assert(ref.idlType.nullable)
                return true
            }
        }
        return false
    }

    var closurePattern: ClosurePattern? {
        if case let .single(name) = value {
            if let callback = ModuleState.types[name] as? IDLCallback {
                return closureWrapper(callback, optional: false)
            }
            if let ref = ModuleState.types[name] as? IDLTypedef,
               case let .single(name) = ref.idlType.value,
               let callback = ModuleState.types[name] as? IDLCallback
            {
                precondition(ref.idlType.nullable)
                return closureWrapper(callback, optional: true)
            }
        }

        return nil
    }

    private func closureWrapper(_ callback: IDLCallback, optional: Bool) -> ClosurePattern {
        let returnsVoid = callback.idlType.swiftRepresentation == "Void"
        let argCount = callback.arguments.count
        return ClosurePattern(nullable: optional, void: returnsVoid, argCount: argCount)
    }
}

extension IDLTypedef: SwiftRepresentable {
    static let typeNameMap: [String: SwiftSource] = [
        // FIXME: WebIDL specifies these as `unsigned long long`, but major browsers expect
        // a JS number and not BigInt here, so we have to keep it `Int32` on the Swift side.
        "GLintptr": "Int32",
        "GPUSize64": "UInt32",
    ]

    var unionType: UnionType? {
        if case let .union(types) = idlType.value {
            return ModuleState.union(for: Set(types.map(SlimIDLType.init)), defaultName: name)
        }
        return nil
    }

    var swiftRepresentation: SwiftSource {
        let aliasedType: SwiftSource

        if let unionType = unionType {
            guard unionType.friendlyName != name else { return "" }
            if let existingName = unionType.friendlyName {
                return "public typealias \(name) = \(existingName)"
            } else {
                unionType.friendlyName = name
                return ""
            }
        } else if let type = Self.typeNameMap[name] { aliasedType = type } else { aliasedType = "\(idlType)" }
        return "public typealias \(name) = \(aliasedType)"
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

extension Extension: SwiftRepresentable {
    var swiftRepresentation: SwiftSource {
         """
         extension \(conformer): \(raw: protocols.joined(separator: ", ")) {}
         \n
         """
    }
}
