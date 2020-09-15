
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum ShadowRootMode: String, JSValueCodable {
    public static func construct(from jsValue: JSValue) -> ShadowRootMode? {
        if let string = jsValue.string,
            let value = ShadowRootMode(rawValue: string)
        {
            return value
        }
        return nil
    }

    case open
    case closed
    public func jsValue() -> JSValue {
        return rawValue.jsValue()
    }
}
