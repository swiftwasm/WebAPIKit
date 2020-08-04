
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

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

    public subscript(jsValue _: ()) -> JSValue {
        switch self {
        case let .radioNodeList(v): return JSValue(from: v)
        case let .element(v): return JSValue(from: v)
        }
    }
}
