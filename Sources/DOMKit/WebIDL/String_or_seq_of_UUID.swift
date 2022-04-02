// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_String_or_seq_of_UUID: ConvertibleToJSValue {}
extension String: Any_String_or_seq_of_UUID {}
extension Array: Any_String_or_seq_of_UUID where Element == UUID {}

public enum String_or_seq_of_UUID: JSValueCompatible, Any_String_or_seq_of_UUID {
    case string(String)
    case seq_of_UUID([UUID])

    public static func construct(from value: JSValue) -> Self? {
        if let string: String = value.fromJSValue() {
            return .string(string)
        }
        if let seq_of_UUID: [UUID] = value.fromJSValue() {
            return .seq_of_UUID(seq_of_UUID)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .string(string):
            return string.jsValue()
        case let .seq_of_UUID(seq_of_UUID):
            return seq_of_UUID.jsValue()
        }
    }
}
