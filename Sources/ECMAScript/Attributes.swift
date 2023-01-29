import JavaScriptKit

@propertyWrapper public struct ReadWriteAttribute<Wrapped: JSValueCompatible> {
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    @inlinable public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: Wrapped {
        get { jsObject[name].fromJSValue()! }
        nonmutating set { jsObject[name] = newValue.jsValue }
    }
}

@propertyWrapper public struct ReadonlyAttribute<Wrapped: ConstructibleFromJSValue> {
    @usableFromInline let jsObject: JSObject
    @usableFromInline let name: JSString

    @inlinable public init(jsObject: JSObject, name: JSString) {
        self.jsObject = jsObject
        self.name = name
    }

    @inlinable public var wrappedValue: Wrapped {
        jsObject[name].fromJSValue()!
    }
}
