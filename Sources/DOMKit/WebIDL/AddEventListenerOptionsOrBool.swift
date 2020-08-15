
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum AddEventListenerOptionsOrBool: JSBridgedType, ExpressibleByBooleanLiteral, ExpressibleByDictionaryLiteral {
    case addEventListenerOptions(AddEventListenerOptions)
    case bool(Bool)

    public init?(from value: JSValue) {
        if let decoded: AddEventListenerOptions = value.fromJSValue() {
            self = .addEventListenerOptions(decoded)
        } else if let decoded: Bool = value.fromJSValue() {
            self = .bool(decoded)
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

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .addEventListenerOptions(v): return v.jsValue()
        case let .bool(v): return v.jsValue()
        }
    }
}
