// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_CSSColorRGBComp: ConvertibleToJSValue {}
extension CSSKeywordish: Any_CSSColorRGBComp {}
extension CSSNumberish: Any_CSSColorRGBComp {}

public enum CSSColorRGBComp: JSValueCompatible, Any_CSSColorRGBComp {
    case cSSKeywordish(CSSKeywordish)
    case cSSNumberish(CSSNumberish)

    public static func construct(from value: JSValue) -> Self? {
        if let cSSKeywordish: CSSKeywordish = value.fromJSValue() {
            return .cSSKeywordish(cSSKeywordish)
        }
        if let cSSNumberish: CSSNumberish = value.fromJSValue() {
            return .cSSNumberish(cSSNumberish)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .cSSKeywordish(cSSKeywordish):
            return cSSKeywordish.jsValue
        case let .cSSNumberish(cSSNumberish):
            return cSSNumberish.jsValue
        }
    }
}
