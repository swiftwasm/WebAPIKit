// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_CSSStyleValue_or_String: ConvertibleToJSValue {}
extension CSSStyleValue: Any_CSSStyleValue_or_String {}
extension String: Any_CSSStyleValue_or_String {}

public enum CSSStyleValue_or_String: JSValueCompatible, Any_CSSStyleValue_or_String {
    case cSSStyleValue(CSSStyleValue)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let cSSStyleValue: CSSStyleValue = value.fromJSValue() {
            return .cSSStyleValue(cSSStyleValue)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .cSSStyleValue(cSSStyleValue):
            return cSSStyleValue.jsValue()
        case let .string(string):
            return string.jsValue()
        }
    }
}
