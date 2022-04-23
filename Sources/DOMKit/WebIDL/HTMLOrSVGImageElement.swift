// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_HTMLOrSVGImageElement: ConvertibleToJSValue {}
extension HTMLImageElement: Any_HTMLOrSVGImageElement {}
extension SVGImageElement: Any_HTMLOrSVGImageElement {}

public enum HTMLOrSVGImageElement: JSValueCompatible, Any_HTMLOrSVGImageElement {
    case htmlImageElement(HTMLImageElement)
    case svgImageElement(SVGImageElement)

    var htmlImageElement: HTMLImageElement? {
        switch self {
        case let .htmlImageElement(htmlImageElement): return htmlImageElement
        default: return nil
        }
    }

    var svgImageElement: SVGImageElement? {
        switch self {
        case let .svgImageElement(svgImageElement): return svgImageElement
        default: return nil
        }
    }

    public static func construct(from value: JSValue) -> Self? {
        if let htmlImageElement: HTMLImageElement = value.fromJSValue() {
            return .htmlImageElement(htmlImageElement)
        }
        if let svgImageElement: SVGImageElement = value.fromJSValue() {
            return .svgImageElement(svgImageElement)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .htmlImageElement(htmlImageElement):
            return htmlImageElement.jsValue
        case let .svgImageElement(svgImageElement):
            return svgImageElement.jsValue
        }
    }
}
