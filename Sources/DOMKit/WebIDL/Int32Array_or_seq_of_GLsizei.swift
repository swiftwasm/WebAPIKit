// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Int32Array_or_seq_of_GLsizei: ConvertibleToJSValue {}
extension Int32Array: Any_Int32Array_or_seq_of_GLsizei {}
extension Array: Any_Int32Array_or_seq_of_GLsizei where Element == GLsizei {}

public enum Int32Array_or_seq_of_GLsizei: JSValueCompatible, Any_Int32Array_or_seq_of_GLsizei {
    case int32Array(Int32Array)
    case seq_of_GLsizei([GLsizei])

    public static func construct(from value: JSValue) -> Self? {
        if let int32Array: Int32Array = value.fromJSValue() {
            return .int32Array(int32Array)
        }
        if let seq_of_GLsizei: [GLsizei] = value.fromJSValue() {
            return .seq_of_GLsizei(seq_of_GLsizei)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .int32Array(int32Array):
            return int32Array.jsValue
        case let .seq_of_GLsizei(seq_of_GLsizei):
            return seq_of_GLsizei.jsValue
        }
    }
}