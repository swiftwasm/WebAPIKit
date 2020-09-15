
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public enum EndingType: String, JSValueCodable {
    public static func construct(from jsValue: JSValue) -> EndingType? {
        if let string = jsValue.string,
            let value = EndingType(rawValue: string)
        {
            return value
        }
        return nil
    }

    case transparent
    case native
    public func jsValue() -> JSValue {
        return rawValue.jsValue()
    }
}
