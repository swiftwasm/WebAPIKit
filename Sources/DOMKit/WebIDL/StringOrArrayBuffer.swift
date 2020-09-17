
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum StringOrArrayBuffer: JSBridgedType, ExpressibleByStringLiteral {
    case string(String)
    case arrayBuffer(ArrayBuffer)

    public init?(from value: JSValue) {
        if let decoded: String = value.fromJSValue() {
            self = .string(decoded)
        } else if let decoded: ArrayBuffer = value.fromJSValue() {
            self = .arrayBuffer(decoded)
        } else {
            return nil
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .string(v): return v.jsValue()
        case let .arrayBuffer(v): return v.jsValue()
        }
    }
}
