
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum AddEventListenerOptionsOrBool: JSValueEncodable, JSValueDecodable, ExpressibleByBooleanLiteral, ExpressibleByDictionaryLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return AddEventListenerOptions.canDecode(from: jsValue) || Bool.canDecode(from: jsValue)
    }

    case addEventListenerOptions(AddEventListenerOptions)
    case bool(Bool)

    public init(jsValue: JSValue) {
        if AddEventListenerOptions.canDecode(from: jsValue) {
            self = .addEventListenerOptions(jsValue.fromJSValue())
        } else if Bool.canDecode(from: jsValue) {
            self = .bool(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public init(dictionaryLiteral elements: (AddEventListenerOptions.Key, AddEventListenerOptions.Value)...) {
        self = .addEventListenerOptions(.init(uniqueKeysWithValues: elements))
    }

    public init(booleanLiteral value: Bool) {
        self = .bool(value)
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .addEventListenerOptions(v): return v.jsValue()
        case let .bool(v): return v.jsValue()
        }
    }
}
