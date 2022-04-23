// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Any_HTMLCanvasElement_or_OffscreenCanvas: ConvertibleToJSValue {}
extension HTMLCanvasElement: Any_HTMLCanvasElement_or_OffscreenCanvas {}
extension OffscreenCanvas: Any_HTMLCanvasElement_or_OffscreenCanvas {}

public enum HTMLCanvasElement_or_OffscreenCanvas: JSValueCompatible, Any_HTMLCanvasElement_or_OffscreenCanvas {
    case htmlCanvasElement(HTMLCanvasElement)
    case offscreenCanvas(OffscreenCanvas)

    var htmlCanvasElement: HTMLCanvasElement? {
        switch self {
        case let .htmlCanvasElement(htmlCanvasElement): return htmlCanvasElement
        default: return nil
        }
    }

    var offscreenCanvas: OffscreenCanvas? {
        switch self {
        case let .offscreenCanvas(offscreenCanvas): return offscreenCanvas
        default: return nil
        }
    }

    public static func construct(from value: JSValue) -> Self? {
        if let htmlCanvasElement: HTMLCanvasElement = value.fromJSValue() {
            return .htmlCanvasElement(htmlCanvasElement)
        }
        if let offscreenCanvas: OffscreenCanvas = value.fromJSValue() {
            return .offscreenCanvas(offscreenCanvas)
        }
        return nil
    }

    public var jsValue: JSValue {
        switch self {
        case let .htmlCanvasElement(htmlCanvasElement):
            return htmlCanvasElement.jsValue
        case let .offscreenCanvas(offscreenCanvas):
            return offscreenCanvas.jsValue
        }
    }
}
