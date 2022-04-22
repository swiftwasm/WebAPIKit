// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_DOMPointInit_or_Double_or_seq_of_DOMPointInit_or_Double: ConvertibleToJSValue {}
extension DOMPointInit: Any_DOMPointInit_or_Double_or_seq_of_DOMPointInit_or_Double {}
extension Double: Any_DOMPointInit_or_Double_or_seq_of_DOMPointInit_or_Double {}
extension Array: Any_DOMPointInit_or_Double_or_seq_of_DOMPointInit_or_Double where Element == DOMPointInit_or_Double {}

public enum DOMPointInit_or_Double_or_seq_of_DOMPointInit_or_Double: JSValueCompatible, Any_DOMPointInit_or_Double_or_seq_of_DOMPointInit_or_Double {
    case domPointInit(DOMPointInit)
    case double(Double)
    case seq_of_DOMPointInit_or_Double([DOMPointInit_or_Double])

    public static func construct(from value: JSValue) -> Self? {
        if let domPointInit: DOMPointInit = value.fromJSValue() {
            return .domPointInit(domPointInit)
        }
        if let double: Double = value.fromJSValue() {
            return .double(double)
        }
        if let seq_of_DOMPointInit_or_Double: [DOMPointInit_or_Double] = value.fromJSValue() {
            return .seq_of_DOMPointInit_or_Double(seq_of_DOMPointInit_or_Double)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .domPointInit(domPointInit):
            return domPointInit.jsValue
        case let .double(double):
            return double.jsValue
        case let .seq_of_DOMPointInit_or_Double(seq_of_DOMPointInit_or_Double):
            return seq_of_DOMPointInit_or_Double.jsValue
        }
    }
}
