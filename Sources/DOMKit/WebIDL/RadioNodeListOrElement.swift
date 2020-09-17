
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum RadioNodeListOrElement: JSBridgedType {
    case radioNodeList(RadioNodeList)
    case element(Element)

    public init?(from value: JSValue) {
        if let decoded: RadioNodeList = value.fromJSValue() {
            self = .radioNodeList(decoded)
        } else if let decoded: Element = value.fromJSValue() {
            self = .element(decoded)
        } else {
            return nil
        }
    }

    public var value: JSValue { jsValue() }

    public func jsValue() -> JSValue {
        switch self {
        case let .radioNodeList(v): return v.jsValue()
        case let .element(v): return v.jsValue()
        }
    }
}
