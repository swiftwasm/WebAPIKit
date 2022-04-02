import JavaScriptKit

@propertyWrapper public struct ReadWriteAttribute<Wrapped: JSValueCompatible> {
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: Wrapped {
        get { ReadWriteAttribute[name, in: jsObject] }
        nonmutating set { ReadWriteAttribute[name, in: jsObject] = newValue }
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> Wrapped {
        get { jsObject[name].fromJSValue()! }
        set { jsObject[name] = newValue.jsValue() }
    }
}

@propertyWrapper public struct ReadonlyAttribute<Wrapped: ConstructibleFromJSValue> {
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: Wrapped {
        ReadonlyAttribute[name, in: jsObject]
    }

    @inlinable public static subscript(name: JSString, in jsObject: JSObject) -> Wrapped {
        jsObject[name].fromJSValue()!
    }
}
