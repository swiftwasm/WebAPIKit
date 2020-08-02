
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum RadioNodeListOrElement: JSValueEncodable, JSValueDecodable {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return RadioNodeList.canDecode(from: jsValue) || Element.canDecode(from: jsValue)
    }

    case radioNodeList(RadioNodeList)
    case element(Element)

    public init(jsValue: JSValue) {
        if RadioNodeList.canDecode(from: jsValue) {
            self = .radioNodeList(jsValue.fromJSValue())
        } else if Element.canDecode(from: jsValue) {
            self = .element(jsValue.fromJSValue())
        } else {
            fatalError()
        }
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .radioNodeList(v): return v.jsValue()
        case let .element(v): return v.jsValue()
        }
    }
}
