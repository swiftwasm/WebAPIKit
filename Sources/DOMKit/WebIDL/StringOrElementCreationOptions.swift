
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public enum StringOrElementCreationOptions: JSValueEncodable, JSValueDecodable, ExpressibleByDictionaryLiteral, ExpressibleByStringLiteral {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return String.canDecode(from: jsValue) || ElementCreationOptions.canDecode(from: jsValue)
    }

    case string(String)
    case elementCreationOptions(ElementCreationOptions)

    public init(jsValue: JSValue) {
        if String.canDecode(from: jsValue) {
            self = .string(jsValue.fromJSValue())
        } else if ElementCreationOptions.canDecode(from: jsValue) {
            self = .elementCreationOptions(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public init(stringLiteral value: String) {
        self = .string(value)
    }

    public init(dictionaryLiteral elements: (ElementCreationOptions.Key, ElementCreationOptions.Value)...) {
        self = .elementCreationOptions(.init(uniqueKeysWithValues: elements))
    }

    public subscript(jsValue _: ()) -> JSValue {
        switch self {
        case let .string(v): return JSValue(from: v)
        case let .elementCreationOptions(v): return JSValue(from: v)
        }
    }
}
