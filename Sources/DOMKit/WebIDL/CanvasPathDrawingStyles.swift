// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

private enum Keys {
    static let getLineDash: JSString = "getLineDash"
    static let lineCap: JSString = "lineCap"
    static let lineDashOffset: JSString = "lineDashOffset"
    static let lineJoin: JSString = "lineJoin"
    static let lineWidth: JSString = "lineWidth"
    static let miterLimit: JSString = "miterLimit"
    static let setLineDash: JSString = "setLineDash"
}

public protocol CanvasPathDrawingStyles: JSBridgedClass {}
public extension CanvasPathDrawingStyles {
    var lineWidth: Double {
        get { ReadWriteAttribute[Keys.lineWidth, in: jsObject] }
        set { ReadWriteAttribute[Keys.lineWidth, in: jsObject] = newValue }
    }

    var lineCap: CanvasLineCap {
        get { ReadWriteAttribute[Keys.lineCap, in: jsObject] }
        set { ReadWriteAttribute[Keys.lineCap, in: jsObject] = newValue }
    }

    var lineJoin: CanvasLineJoin {
        get { ReadWriteAttribute[Keys.lineJoin, in: jsObject] }
        set { ReadWriteAttribute[Keys.lineJoin, in: jsObject] = newValue }
    }

    var miterLimit: Double {
        get { ReadWriteAttribute[Keys.miterLimit, in: jsObject] }
        set { ReadWriteAttribute[Keys.miterLimit, in: jsObject] = newValue }
    }

    func setLineDash(segments: [Double]) {
        _ = jsObject[Keys.setLineDash]!(segments.jsValue())
    }

    func getLineDash() -> [Double] {
        jsObject[Keys.getLineDash]!().fromJSValue()!
    }

    var lineDashOffset: Double {
        get { ReadWriteAttribute[Keys.lineDashOffset, in: jsObject] }
        set { ReadWriteAttribute[Keys.lineDashOffset, in: jsObject] = newValue }
    }
}
