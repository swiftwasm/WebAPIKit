
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum BufferSourceOrBlobOrString: JSBridgedType, ExpressibleByStringLiteral {
    case bufferSource(BufferSource)
    case blob(Blob)
    case string(String)

    public init?(from value: JSValue) {
        if let decoded: BufferSource = value.fromJSValue() {
            self = .bufferSource(decoded)
        } else if let decoded: Blob = value.fromJSValue() {
            self = .blob(decoded)
        } else if let decoded: String = value.fromJSValue() {
            self = .string(decoded)
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
        case let .bufferSource(v): return v.jsValue()
        case let .blob(v): return v.jsValue()
        case let .string(v): return v.jsValue()
        }
    }
}
