
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum EndingType: String, JSValueCodable {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return jsValue.isString
    }

    case transparent
    case native

    public init(jsValue: JSValue) {
        guard let value = EndingType(rawValue: jsValue.fromJSValue()) else {
            fatalError()
        }
        self = value
    }

    public func jsValue() -> JSValue {
        return rawValue.jsValue()
    }
}
