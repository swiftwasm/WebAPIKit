
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

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

    public subscript(jsValue _: ()) -> JSValue {
        switch self {
        case let .eventListenerOptions(v): return JSValue(from: v)
        case let .bool(v): return JSValue(from: v)
        }
    }
}
