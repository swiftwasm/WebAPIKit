
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum EventOrString: JSBridgedType, ExpressibleByStringLiteral {
    case event(Event)
    case string(String)

    public init?(from value: JSValue) {
        if let decoded: Event = value.fromJSValue() {
            self = .event(decoded)
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
        case let .event(v): return v.jsValue()
        case let .string(v): return v.jsValue()
        }
    }
}
