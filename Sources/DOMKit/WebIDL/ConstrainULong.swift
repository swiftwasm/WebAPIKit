// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_ConstrainULong: ConvertibleToJSValue {}
extension ConstrainULongRange: Any_ConstrainULong {}
extension UInt32: Any_ConstrainULong {}

public enum ConstrainULong: JSValueCompatible, Any_ConstrainULong {
    case constrainULongRange(ConstrainULongRange)
    case uInt32(UInt32)

    public static func construct(from value: JSValue) -> Self? {
        if let constrainULongRange: ConstrainULongRange = value.fromJSValue() {
            return .constrainULongRange(constrainULongRange)
        }
        if let uInt32: UInt32 = value.fromJSValue() {
            return .uInt32(uInt32)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .constrainULongRange(constrainULongRange):
            return constrainULongRange.jsValue
        case let .uInt32(uInt32):
            return uInt32.jsValue
        }
    }
}
