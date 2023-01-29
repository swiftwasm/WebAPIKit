import JavaScriptKit

// TODO: change to `package` visibility?

@inlinable public func _toJSValue<T: ConvertibleToJSValue>(_ value: T) -> JSValue {
    value.jsValue
}

@inlinable public func _toJSValue<T: ConvertibleToJSValue>(_ value: T?) -> JSValue {
    value?.jsValue ?? .undefined
}
