// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_CSSNumericValue_or_Double_or_String: ConvertibleToJSValue {}
extension CSSNumericValue: Any_CSSNumericValue_or_Double_or_String {}
extension Double: Any_CSSNumericValue_or_Double_or_String {}
extension String: Any_CSSNumericValue_or_Double_or_String {}

public enum CSSNumericValue_or_Double_or_String: JSValueCompatible, Any_CSSNumericValue_or_Double_or_String {
    case cSSNumericValue(CSSNumericValue)
    case double(Double)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let cSSNumericValue: CSSNumericValue = value.fromJSValue() {
            return .cSSNumericValue(cSSNumericValue)
        }
        if let double: Double = value.fromJSValue() {
            return .double(double)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .cSSNumericValue(cSSNumericValue):
            return cSSNumericValue.jsValue
        case let .double(double):
            return double.jsValue
        case let .string(string):
            return string.jsValue
        }
    }
}