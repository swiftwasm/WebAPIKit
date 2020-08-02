
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum EventListenerOptionsOrBool: JSValueEncodable, JSValueDecodable, ExpressibleByBooleanLiteral, ExpressibleByDictionaryLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return EventListenerOptions.canDecode(from: jsValue) || Bool.canDecode(from: jsValue)
    }

    case eventListenerOptions(EventListenerOptions)
    case bool(Bool)

    public init(jsValue: JSValue) {
        if EventListenerOptions.canDecode(from: jsValue) {
            self = .eventListenerOptions(jsValue.fromJSValue())
        } else if Bool.canDecode(from: jsValue) {
            self = .bool(jsValue.fromJSValue())
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

    public func jsValue() -> JSValue {
        switch self {
        case let .eventListenerOptions(v): return v.jsValue()
        case let .bool(v): return v.jsValue()
        }
    }
}
