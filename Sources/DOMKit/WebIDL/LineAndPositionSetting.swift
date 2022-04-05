// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_LineAndPositionSetting: ConvertibleToJSValue {}
extension AutoKeyword: Any_LineAndPositionSetting {}
extension Double: Any_LineAndPositionSetting {}

public enum LineAndPositionSetting: JSValueCompatible, Any_LineAndPositionSetting {
    case autoKeyword(AutoKeyword)
    case double(Double)

    public static func construct(from value: JSValue) -> Self? {
        if let autoKeyword: AutoKeyword = value.fromJSValue() {
            return .autoKeyword(autoKeyword)
        }
        if let double: Double = value.fromJSValue() {
            return .double(double)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .autoKeyword(autoKeyword):
            return autoKeyword.jsValue
        case let .double(double):
            return double.jsValue
        }
    }
}
