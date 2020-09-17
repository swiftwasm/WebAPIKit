
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum StringOrElementCreationOptions: JSBridgedType, ExpressibleByDictionaryLiteral, ExpressibleByStringLiteral {
    case string(String)
    case elementCreationOptions(ElementCreationOptions)

    public init?(from value: JSValue) {
        if let decoded: String = value.fromJSValue() {
            self = .string(decoded)
        } else if let decoded: ElementCreationOptions = value.fromJSValue() {
            self = .elementCreationOptions(decoded)
        } else {
            return nil
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public init(dictionaryLiteral elements: (ElementCreationOptions.Key, ElementCreationOptions.Value)...) {
        self = .elementCreationOptions(.init(uniqueKeysWithValues: elements))
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .string(v): return v.jsValue()
        case let .elementCreationOptions(v): return v.jsValue()
        }
    }
}
