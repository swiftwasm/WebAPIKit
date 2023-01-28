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
            closureBody = "\(call).fromJSValue()!"
        }
        return """
        \(getFunction)
        return { \(closureBody) }
        """
    }

    private var setter: SwiftSource {
        let call: SwiftSource = "newValue(\(sequence: indexes.map { "$0[\($0)].fromJSValue()!" }))"
        let body: SwiftSource
        if void {
            body = """
            \(call)
            return .undefined
            """
        } else {
            body = "_toJSValue(\(call))"
        }
        let setClosure: SwiftSource = """
            jsObject[name] = JSClosure { \(argCount == 0 ? "_ in" : "")
                \(body)
            }.jsValue
        """

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
        return """
        <\(sequence: typeNames)>
        where \(sequence: typeNames.map { "\($0): JSValueCompatible" })
        """
    }

    var swiftRepresentation: SwiftSource {
        """
        @propertyWrapper public final class \(name)\(typeParams) {

            @usableFromInline let jsObject: JSObject
            @usableFromInline let name: JSString

            public init(jsObject: JSObject, name: JSString) {
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
}
