
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public struct EventInit: ExpressibleByDictionaryLiteral, JSBridgedType {
    public enum Key: String, Hashable {
        case bubbles, cancelable, composed
    }

    public typealias Value = AnyJSValueCodable

    private let dictionary: [String: AnyJSValueCodable]

    public init(uniqueKeysWithValues elements: [(Key, Value)]) {
        dictionary = Dictionary(uniqueKeysWithValues: elements.map { ($0.0.rawValue, $0.1) })
    }

    public init(dictionaryLiteral elements: (Key, AnyJSValueCodable)...) {
        dictionary = Dictionary(uniqueKeysWithValues: elements.map { ($0.0.rawValue, $0.1) })
    }

    subscript(_ key: Key) -> AnyJSValueCodable? {
        dictionary[key.rawValue]
    }

    public init?(from value: JSValue) {
        if let dictionary: [String: AnyJSValueCodable] = value.fromJSValue() {
            self.dictionary = dictionary
        }
        return nil
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        return dictionary.jsValue()
    }
}
