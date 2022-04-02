// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol CanvasPath: JSBridgedClass {}
public extension CanvasPath {
    @inlinable func closePath() {
        let this = jsObject
        _ = this[Strings.closePath].function!(this: this, arguments: [])
    }

    @inlinable func moveTo(x: Double, y: Double) {
        let this = jsObject
        _ = this[Strings.moveTo].function!(this: this, arguments: [x.jsValue(), y.jsValue()])
    }

    @inlinable func lineTo(x: Double, y: Double) {
        let this = jsObject
        _ = this[Strings.lineTo].function!(this: this, arguments: [x.jsValue(), y.jsValue()])
    }

    @inlinable func quadraticCurveTo(cpx: Double, cpy: Double, x: Double, y: Double) {
        let this = jsObject
        _ = this[Strings.quadraticCurveTo].function!(this: this, arguments: [cpx.jsValue(), cpy.jsValue(), x.jsValue(), y.jsValue()])
    }

    @inlinable func bezierCurveTo(cp1x: Double, cp1y: Double, cp2x: Double, cp2y: Double, x: Double, y: Double) {
        let _arg0 = cp1x.jsValue()
        let _arg1 = cp1y.jsValue()
        let _arg2 = cp2x.jsValue()
        let _arg3 = cp2y.jsValue()
        let _arg4 = x.jsValue()
        let _arg5 = y.jsValue()
        let this = jsObject
        _ = this[Strings.bezierCurveTo].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5])
    }

    @inlinable func arcTo(x1: Double, y1: Double, x2: Double, y2: Double, radius: Double) {
        let this = jsObject
        _ = this[Strings.arcTo].function!(this: this, arguments: [x1.jsValue(), y1.jsValue(), x2.jsValue(), y2.jsValue(), radius.jsValue()])
    }

    @inlinable func rect(x: Double, y: Double, w: Double, h: Double) {
        let this = jsObject
        _ = this[Strings.rect].function!(this: this, arguments: [x.jsValue(), y.jsValue(), w.jsValue(), h.jsValue()])
    }

    @inlinable func roundRect(x: Double, y: Double, w: Double, h: Double, radii: __UNSUPPORTED_UNION__? = nil) {
        let this = jsObject
        _ = this[Strings.roundRect].function!(this: this, arguments: [x.jsValue(), y.jsValue(), w.jsValue(), h.jsValue(), radii?.jsValue() ?? .undefined])
    }

    @inlinable func arc(x: Double, y: Double, radius: Double, startAngle: Double, endAngle: Double, counterclockwise: Bool? = nil) {
        let _arg0 = x.jsValue()
        let _arg1 = y.jsValue()
        let _arg2 = radius.jsValue()
        let _arg3 = startAngle.jsValue()
        let _arg4 = endAngle.jsValue()
        let _arg5 = counterclockwise?.jsValue() ?? .undefined
        let this = jsObject
        _ = this[Strings.arc].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5])
    }

    @inlinable func ellipse(x: Double, y: Double, radiusX: Double, radiusY: Double, rotation: Double, startAngle: Double, endAngle: Double, counterclockwise: Bool? = nil) {
        let _arg0 = x.jsValue()
        let _arg1 = y.jsValue()
        let _arg2 = radiusX.jsValue()
        let _arg3 = radiusY.jsValue()
        let _arg4 = rotation.jsValue()
        let _arg5 = startAngle.jsValue()
        let _arg6 = endAngle.jsValue()
        let _arg7 = counterclockwise?.jsValue() ?? .undefined
        let this = jsObject
        _ = this[Strings.ellipse].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7])
    }
}
