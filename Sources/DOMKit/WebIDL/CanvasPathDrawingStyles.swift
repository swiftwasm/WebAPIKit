// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol CanvasPathDrawingStyles: JSBridgedClass {}
public extension CanvasPathDrawingStyles {
    @inlinable var lineWidth: Double {
        get { ReadWriteAttribute[Strings.lineWidth, in: jsObject] }
        set { ReadWriteAttribute[Strings.lineWidth, in: jsObject] = newValue }
    }

    @inlinable var lineCap: CanvasLineCap {
        get { ReadWriteAttribute[Strings.lineCap, in: jsObject] }
        set { ReadWriteAttribute[Strings.lineCap, in: jsObject] = newValue }
    }

    @inlinable var lineJoin: CanvasLineJoin {
        get { ReadWriteAttribute[Strings.lineJoin, in: jsObject] }
        set { ReadWriteAttribute[Strings.lineJoin, in: jsObject] = newValue }
    }

    @inlinable var miterLimit: Double {
        get { ReadWriteAttribute[Strings.miterLimit, in: jsObject] }
        set { ReadWriteAttribute[Strings.miterLimit, in: jsObject] = newValue }
    }

    @inlinable func setLineDash(segments: [Double]) {
        let this = jsObject
        _ = this[Strings.setLineDash].function!(this: this, arguments: [segments.jsValue()])
    }

    @inlinable func getLineDash() -> [Double] {
        let this = jsObject
        return this[Strings.getLineDash].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable var lineDashOffset: Double {
        get { ReadWriteAttribute[Strings.lineDashOffset, in: jsObject] }
        set { ReadWriteAttribute[Strings.lineDashOffset, in: jsObject] = newValue }
    }
}
