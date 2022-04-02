// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_CSSColorValue_or_CSSStyleValue: ConvertibleToJSValue {}
extension CSSColorValue: Any_CSSColorValue_or_CSSStyleValue {}
extension CSSStyleValue: Any_CSSColorValue_or_CSSStyleValue {}

public enum CSSColorValue_or_CSSStyleValue: JSValueCompatible, Any_CSSColorValue_or_CSSStyleValue {
    case cSSColorValue(CSSColorValue)
    case cSSStyleValue(CSSStyleValue)

    public static func construct(from value: JSValue) -> Self? {
        if let cSSColorValue: CSSColorValue = value.fromJSValue() {
            return .cSSColorValue(cSSColorValue)
        }
        if let cSSStyleValue: CSSStyleValue = value.fromJSValue() {
            return .cSSStyleValue(cSSStyleValue)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .cSSColorValue(cSSColorValue):
            return cSSColorValue.jsValue()
        case let .cSSStyleValue(cSSStyleValue):
            return cSSStyleValue.jsValue()
        }
    }
}
