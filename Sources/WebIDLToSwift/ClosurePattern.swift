struct ClosurePattern: SwiftRepresentable, Equatable, Hashable, Comparable {
    static func < (lhs: ClosurePattern, rhs: ClosurePattern) -> Bool {
        lhs.name.source < rhs.name.source
    }

    let nullable: Bool
    let void: Bool
    let argCount: Int

    var name: SwiftSource {
        "ClosureAttribute\(String(argCount))\(nullable ? "Optional" : "")\(void ? "Void" : "")"
    }

    var indexes: [String] { (0 ..< argCount).map(String.init) }

    private var typeNames: [SwiftSource] {
        indexes.map { "A\($0)" } + (void ? [] : ["ReturnType"])
    }

    private var closureType: SwiftSource {
        let closure: SwiftSource = "(\(sequence: Array(typeNames.prefix(argCount)))) -> \(void ? "Void" : "ReturnType")"
        return nullable ? "(\(closure))?" : closure
    }

    private var getter: SwiftSource {
        let getFunction: SwiftSource
        if nullable {
            getFunction = """
            guard let function = jsObject[name].function else {
                return nil
            }
            """
        } else {
            getFunction = "let function = jsObject[name].function!"
        }
        let call: SwiftSource = "function(\(sequence: indexes.map { "_toJSValue($\($0))" }))"
        let closureBody: SwiftSource
        if void {
            closureBody = call
        } else {
            // XXX: For nullable return types, should not use `!` here
            closureBody = "\(call).fromJSValue()!"
        }
        return """
        \(getFunction)
        return { \(closureBody) }
        """
    }

    private func jsClosureWrapper(name: SwiftSource) -> SwiftSource {
        let call: SwiftSource = "\(name)(\(sequence: indexes.map { "$0[\($0)].fromJSValue()!" }))"
        let body: SwiftSource
        if void {
            body = """
            \(call)
            return .undefined
            """
        } else {
            body = "_toJSValue(\(call))"
        }

        return """
            JSClosure { \(argCount == 0 ? "_ in" : "")
                \(body)
            }.jsValue
        """
    }

    private var setter: SwiftSource {
        let setClosure: SwiftSource = "jsObject[name] = \(jsClosureWrapper(name: "newValue"))"

        if nullable {
            return """
                if let newValue = newValue {
                    \(setClosure)
                } else {
                    jsObject[name] = .null
                }
            """
        } else {
            return setClosure
        }
    }

    var typeParams: SwiftSource {
        if typeNames.isEmpty { return "" }
        return "<\(sequence: typeNames)>"
    }

    var whereClause: SwiftSource {
        if typeNames.isEmpty { return "" }
        return "\nwhere \(sequence: typeNames.map { "\($0): JSValueCompatible" })"
    }

    var propertyWrapper: SwiftSource {
        """
        @propertyWrapper public final class \(name)\(typeParams) \(whereClause) {

            @usableFromInline let jsObject: JSObject
            @usableFromInline let name: JSString

            @inlinable public init(jsObject: JSObject, name: JSString) {
                self.jsObject = jsObject
                self.name = name
            }

            @inlinable public var wrappedValue: \(closureType) {
                get { \(name)[name, in: jsObject] }
                set { \(name)[name, in: jsObject] = newValue }
            }

            @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> \(closureType) {
                get {
                    \(getter)
                }
                set {
                    \(setter)
                }
            }
        }
        """
    }

    var toJSValue: SwiftSource {
        let escaping: SwiftSource = nullable ? "" : "@escaping"
        return """
        @inlinable public func _toJSValue\(typeParams)(_ value: \(escaping) \(closureType)) -> JSValue \(whereClause) {
            \(jsClosureWrapper(name: nullable ? "value?" : "value"))
        }
        """
    }

    var swiftRepresentation: SwiftSource {
        """
        \(propertyWrapper)
        \(toJSValue)
        """
    }
}
