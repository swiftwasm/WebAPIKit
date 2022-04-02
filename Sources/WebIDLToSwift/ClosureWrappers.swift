struct ClosureWrapper: SwiftRepresentable, Equatable {
    let nullable: Bool
    let argCount: Int

    var name: SwiftSource {
        if nullable {
            return "Optional\(String(argCount))"
        } else {
            return "Required\(String(argCount))"
        }
    }

    var indexes: [String] { (0 ..< argCount).map(String.init) }

    private var typeNames: [SwiftSource] {
        indexes.map { "A\($0)" } + ["ReturnType"]
    }

    private var closureType: SwiftSource {
        let closure: SwiftSource = "(\(sequence: typeNames.dropLast())) -> ReturnType"
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
        return """
        \(getFunction)
        return { function(\(sequence: indexes.map { "$\($0).jsValue()" })).fromJSValue()! }
        """
    }

    private var setter: SwiftSource {
        let setClosure: SwiftSource = """
            jsObject[name] = JSClosure { \(argCount == 0 ? "_ in" : "")
                newValue(\(sequence: indexes.map { "$0[\($0)].fromJSValue()!" })).jsValue()
            }.jsValue()
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

    var swiftRepresentation: SwiftSource {
        """
        @propertyWrapper public final class \(name)<\(sequence: typeNames)>
            where \(sequence: typeNames.map { "\($0): JSValueCompatible" })
        {

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
