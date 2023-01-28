import JavaScriptKit

// TODO: change to `package` visibility?

@inlinable public func _toJSValue<T: ConvertibleToJSValue>(_ value: T) -> JSValue {
    value.jsValue
}

@inlinable public func _toJSValue<T: ConvertibleToJSValue>(_ value: T?) -> JSValue {
    value?.jsValue ?? .undefined
}

// MARK: (T...) -> Void

@inlinable public func _toJSValue(_ value: (() -> Void)?) -> JSValue {
    guard let value = value else { return .undefined }
    return JSClosure { _ in value(); return .undefined }.jsValue
}

@inlinable public func _toJSValue<A0: ConstructibleFromJSValue>(_ value: ((A0) -> Void)?) -> JSValue {
    guard let value = value else { return .undefined }
    return JSClosure { value($0[0].fromJSValue()!); return .undefined }.jsValue
}

@inlinable public func _toJSValue<A0: ConstructibleFromJSValue, A1: ConstructibleFromJSValue>(_ value: ((A0, A1) -> Void)?) -> JSValue {
    guard let value = value else { return .undefined }
    return JSClosure { value($0[0].fromJSValue()!, $0[1].fromJSValue()!); return .undefined }.jsValue
}

// MARK: (T...) -> U

@inlinable public func _toJSValue<ReturnType: ConvertibleToJSValue>(_ value: (() -> ReturnType)?) -> JSValue {
    guard let value = value else { return .undefined }
    return JSClosure { _ in _toJSValue(value()) }.jsValue
}

@inlinable public func _toJSValue<A0: ConstructibleFromJSValue, ReturnType: ConvertibleToJSValue>(_ value: ((A0) -> ReturnType)?) -> JSValue {
    guard let value = value else { return .undefined }
    return JSClosure { _toJSValue(value($0[0].fromJSValue()!)) }.jsValue
}

@inlinable public func _toJSValue<A0: ConstructibleFromJSValue, A1: ConstructibleFromJSValue, ReturnType: ConvertibleToJSValue>(_ value: ((A0, A1) -> ReturnType)?) -> JSValue {
    guard let value = value else { return .undefined }
    return JSClosure { _toJSValue(value($0[0].fromJSValue()!, $0[1].fromJSValue()!)) }.jsValue
}
