
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum ArrayBufferViewOrArrayBuffer: JSBridgedType {
    case arrayBufferView(ArrayBufferView)
    case arrayBuffer(ArrayBuffer)

    public init?(from value: JSValue) {
        if let decoded: ArrayBufferView = value.fromJSValue() {
            self = .arrayBufferView(decoded)
        } else if let decoded: ArrayBuffer = value.fromJSValue() {
            self = .arrayBuffer(decoded)
        } else {
            return nil
        }
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .arrayBufferView(v): return v.jsValue()
        case let .arrayBuffer(v): return v.jsValue()
        }
    }
}
