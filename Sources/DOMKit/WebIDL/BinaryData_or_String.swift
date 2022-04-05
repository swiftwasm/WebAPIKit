// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_BinaryData_or_String: ConvertibleToJSValue {}
extension BinaryData: Any_BinaryData_or_String {}
extension String: Any_BinaryData_or_String {}

public enum BinaryData_or_String: JSValueCompatible, Any_BinaryData_or_String {
    case binaryData(BinaryData)
    case string(String)

    public static func construct(from value: JSValue) -> Self? {
        if let binaryData: BinaryData = value.fromJSValue() {
            return .binaryData(binaryData)
        }
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .binaryData(binaryData):
            return binaryData.jsValue
        case let .string(string):
            return string.jsValue
        }
    }
}
