// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_HTMLOrSVGScriptElement: ConvertibleToJSValue {}
extension HTMLScriptElement: Any_HTMLOrSVGScriptElement {}
extension SVGScriptElement: Any_HTMLOrSVGScriptElement {}

public enum HTMLOrSVGScriptElement: JSValueCompatible, Any_HTMLOrSVGScriptElement {
    case htmlScriptElement(HTMLScriptElement)
    case svgScriptElement(SVGScriptElement)

    public static func construct(from value: JSValue) -> Self? {
        if let htmlScriptElement: HTMLScriptElement = value.fromJSValue() {
            return .htmlScriptElement(htmlScriptElement)
        }
        if let svgScriptElement: SVGScriptElement = value.fromJSValue() {
            return .svgScriptElement(svgScriptElement)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .htmlScriptElement(htmlScriptElement):
            return htmlScriptElement.jsValue
        case let .svgScriptElement(svgScriptElement):
            return svgScriptElement.jsValue
        }
    }
}
