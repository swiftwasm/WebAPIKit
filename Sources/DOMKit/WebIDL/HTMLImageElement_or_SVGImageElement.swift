// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_HTMLImageElement_or_SVGImageElement: ConvertibleToJSValue {}
extension HTMLImageElement: Any_HTMLImageElement_or_SVGImageElement {}
extension SVGImageElement: Any_HTMLImageElement_or_SVGImageElement {}

public enum HTMLImageElement_or_SVGImageElement: JSValueCompatible, Any_HTMLImageElement_or_SVGImageElement {
    case hTMLImageElement(HTMLImageElement)
    case sVGImageElement(SVGImageElement)

    public static func construct(from value: JSValue) -> Self? {
        if let hTMLImageElement: HTMLImageElement = value.fromJSValue() {
            return .hTMLImageElement(hTMLImageElement)
        }
        if let sVGImageElement: SVGImageElement = value.fromJSValue() {
            return .sVGImageElement(sVGImageElement)
        }
        return nil
    }

    public func jsValue() -> JSValue {
        switch self {
        case let .hTMLImageElement(hTMLImageElement):
            return hTMLImageElement.jsValue()
        case let .sVGImageElement(sVGImageElement):
            return sVGImageElement.jsValue()
        }
    }
}
