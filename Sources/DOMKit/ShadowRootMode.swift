
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public enum ShadowRootMode: String, JSValueCodable {
    public static func canDecode(from jsValue: JSValue) -> Bool {
        return jsValue.isString
    }

    case open
    case closed

    public init(jsValue: JSValue) {
        guard let value = ShadowRootMode(rawValue: jsValue.fromJSValue()) else {
            fatalError()
        }
        self = value
    }

    public func jsValue() -> JSValue {
        return rawValue.jsValue()
    }
}
