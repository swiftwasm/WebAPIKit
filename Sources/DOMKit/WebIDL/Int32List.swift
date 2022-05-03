// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_Int32List: ConvertibleToJSValue {}
extension Int32Array: Any_Int32List {}
extension Array: Any_Int32List where Element == GLint {}

public enum Int32List: JSValueCompatible, Any_Int32List {
    case int32Array(Int32Array)
    case seq_of_GLint([GLint])

    var int32Array: Int32Array? {
        switch self {
        case let .int32Array(int32Array): return int32Array
        default: return nil
        }
    }

    var seq_of_GLint: [GLint]? {
        switch self {
        case let .seq_of_GLint(seq_of_GLint): return seq_of_GLint
        default: return nil
        }
    }

    public static func construct(from value: JSValue) -> Self? {
        if let int32Array: Int32Array = value.fromJSValue() {
            return .int32Array(int32Array)
        }
        if let seq_of_GLint: [GLint] = value.fromJSValue() {
            return .seq_of_GLint(seq_of_GLint)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .int32Array(int32Array):
            return int32Array.jsValue
        case let .seq_of_GLint(seq_of_GLint):
            return seq_of_GLint.jsValue
        }
    }
}