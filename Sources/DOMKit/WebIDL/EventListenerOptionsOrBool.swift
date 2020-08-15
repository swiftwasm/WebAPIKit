
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum EventListenerOptionsOrBool: JSBridgedType, ExpressibleByBooleanLiteral, ExpressibleByDictionaryLiteral {
    case eventListenerOptions(EventListenerOptions)
    case bool(Bool)

    public init?(from value: JSValue) {
        if let decoded: EventListenerOptions = value.fromJSValue() {
            self = .eventListenerOptions(decoded)
        } else if let decoded: Bool = value.fromJSValue() {
            self = .bool(decoded)
        } else {
            fatalError()
        }
    }

    public init(dictionaryLiteral elements: (EventListenerOptions.Key, EventListenerOptions.Value)...) {
        self = .eventListenerOptions(.init(uniqueKeysWithValues: elements))
    }

    public init(booleanLiteral value: Bool) {
        self = .bool(value)
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .eventListenerOptions(v): return v.jsValue()
        case let .bool(v): return v.jsValue()
        }
    }
}
