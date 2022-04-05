// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_HTMLElement_or_Int32: ConvertibleToJSValue {}
extension HTMLElement: Any_HTMLElement_or_Int32 {}
extension Int32: Any_HTMLElement_or_Int32 {}

public enum HTMLElement_or_Int32: JSValueCompatible, Any_HTMLElement_or_Int32 {
    case hTMLElement(HTMLElement)
    case int32(Int32)

    public static func construct(from value: JSValue) -> Self? {
        if let hTMLElement: HTMLElement = value.fromJSValue() {
            return .hTMLElement(hTMLElement)
        }
        if let int32: Int32 = value.fromJSValue() {
            return .int32(int32)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .hTMLElement(hTMLElement):
            return hTMLElement.jsValue
        case let .int32(int32):
            return int32.jsValue
        }
    }
}