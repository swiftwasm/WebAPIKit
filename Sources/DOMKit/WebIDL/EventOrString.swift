
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public enum EventOrString: JSValueEncodable, JSValueDecodable, ExpressibleByStringLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return Event.canDecode(from: jsValue) || String.canDecode(from: jsValue)
    }

    case event(Event)
    case string(String)

    public init(jsValue: JSValue) {
        if Event.canDecode(from: jsValue) {
            self = .event(jsValue.fromJSValue())
        } else if String.canDecode(from: jsValue) {
            self = .string(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public subscript(jsValue _: ()) -> JSValue {
        switch self {
        case let .event(v): return JSValue(from: v)
        case let .string(v): return JSValue(from: v)
        }
    }
}
