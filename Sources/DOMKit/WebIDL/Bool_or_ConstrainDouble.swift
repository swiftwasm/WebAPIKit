// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Bool_or_ConstrainDouble: ConvertibleToJSValue {}
extension Bool: Any_Bool_or_ConstrainDouble {}
extension ConstrainDouble: Any_Bool_or_ConstrainDouble {}

public enum Bool_or_ConstrainDouble: JSValueCompatible, Any_Bool_or_ConstrainDouble {
    case bool(Bool)
    case constrainDouble(ConstrainDouble)

    public static func construct(from value: JSValue) -> Self? {
        if let bool: Bool = value.fromJSValue() {
            return .bool(bool)
        }
        if let constrainDouble: ConstrainDouble = value.fromJSValue() {
            return .constrainDouble(constrainDouble)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .bool(bool):
            return bool.jsValue
        case let .constrainDouble(constrainDouble):
            return constrainDouble.jsValue
        }
    }
}