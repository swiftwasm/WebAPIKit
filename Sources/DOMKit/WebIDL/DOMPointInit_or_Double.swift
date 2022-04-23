// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_DOMPointInit_or_Double: ConvertibleToJSValue {}
extension DOMPointInit: Any_DOMPointInit_or_Double {}
extension Double: Any_DOMPointInit_or_Double {}

public enum DOMPointInit_or_Double: JSValueCompatible, Any_DOMPointInit_or_Double {
    case domPointInit(DOMPointInit)
    case double(Double)

    var domPointInit: DOMPointInit? {
        switch self {
        case let .domPointInit(domPointInit): return domPointInit
        default: return nil
        }
    }

    var double: Double? {
        switch self {
        case let .double(double): return double
        default: return nil
        }
    }

    public static func construct(from value: JSValue) -> Self? {
        if let domPointInit: DOMPointInit = value.fromJSValue() {
            return .domPointInit(domPointInit)
        }
        if let double: Double = value.fromJSValue() {
            return .double(double)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .domPointInit(domPointInit):
            return domPointInit.jsValue
        case let .double(double):
            return double.jsValue
        }
    }
}
