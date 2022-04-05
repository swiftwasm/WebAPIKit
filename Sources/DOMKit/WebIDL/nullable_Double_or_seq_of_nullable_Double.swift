// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_nullable_Double_or_seq_of_nullable_Double: ConvertibleToJSValue {}
extension Optional: Any_nullable_Double_or_seq_of_nullable_Double where Wrapped == Double {}
extension Array: Any_nullable_Double_or_seq_of_nullable_Double where Element == Double? {}

public enum nullable_Double_or_seq_of_nullable_Double: JSValueCompatible, Any_nullable_Double_or_seq_of_nullable_Double {
    case nullable_Double(Double?)
    case seq_of_nullable_Double([Double?])

    public static func construct(from value: JSValue) -> Self? {
        if let nullable_Double: Double? = value.fromJSValue() {
            return .nullable_Double(nullable_Double)
        }
        if let seq_of_nullable_Double: [Double?] = value.fromJSValue() {
            return .seq_of_nullable_Double(seq_of_nullable_Double)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .nullable_Double(nullable_Double):
            return nullable_Double.jsValue
        case let .seq_of_nullable_Double(seq_of_nullable_Double):
            return seq_of_nullable_Double.jsValue
        }
    }
}
