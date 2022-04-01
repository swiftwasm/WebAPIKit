// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let createConicGradient: JSString = "createConicGradient"
    static let createLinearGradient: JSString = "createLinearGradient"
    static let createPattern: JSString = "createPattern"
    static let createRadialGradient: JSString = "createRadialGradient"
    static let fillStyle: JSString = "fillStyle"
    static let strokeStyle: JSString = "strokeStyle"
}

public protocol CanvasFillStrokeStyles: JSBridgedClass {}
public extension CanvasFillStrokeStyles {
    var strokeStyle: __UNSUPPORTED_UNION__ {
        get { ReadWriteAttribute[Keys.strokeStyle, in: jsObject] }
        set { ReadWriteAttribute[Keys.strokeStyle, in: jsObject] = newValue }
    }

    var fillStyle: __UNSUPPORTED_UNION__ {
        get { ReadWriteAttribute[Keys.fillStyle, in: jsObject] }
        set { ReadWriteAttribute[Keys.fillStyle, in: jsObject] = newValue }
    }

    func createLinearGradient(x0: Double, y0: Double, x1: Double, y1: Double) -> CanvasGradient {
        jsObject[Keys.createLinearGradient]!(x0.jsValue(), y0.jsValue(), x1.jsValue(), y1.jsValue()).fromJSValue()!
    }

    func createRadialGradient(x0: Double, y0: Double, r0: Double, x1: Double, y1: Double, r1: Double) -> CanvasGradient {
        let _arg0 = x0.jsValue()
        let _arg1 = y0.jsValue()
        let _arg2 = r0.jsValue()
        let _arg3 = x1.jsValue()
        let _arg4 = y1.jsValue()
        let _arg5 = r1.jsValue()
        return jsObject[Keys.createRadialGradient]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5).fromJSValue()!
    }

    func createConicGradient(startAngle: Double, x: Double, y: Double) -> CanvasGradient {
        jsObject[Keys.createConicGradient]!(startAngle.jsValue(), x.jsValue(), y.jsValue()).fromJSValue()!
    }

    func createPattern(image: CanvasImageSource, repetition: String) -> CanvasPattern? {
        jsObject[Keys.createPattern]!(image.jsValue(), repetition.jsValue()).fromJSValue()!
    }
}
