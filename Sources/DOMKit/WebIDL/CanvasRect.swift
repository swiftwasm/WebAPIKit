// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol CanvasRect: JSBridgedClass {}
public extension CanvasRect {
    @inlinable func clearRect(x: Double, y: Double, w: Double, h: Double) {
        let this = jsObject
        _ = this[Strings.clearRect].function!(this: this, arguments: [x.jsValue(), y.jsValue(), w.jsValue(), h.jsValue()])
    }

    @inlinable func fillRect(x: Double, y: Double, w: Double, h: Double) {
        let this = jsObject
        _ = this[Strings.fillRect].function!(this: this, arguments: [x.jsValue(), y.jsValue(), w.jsValue(), h.jsValue()])
    }

    @inlinable func strokeRect(x: Double, y: Double, w: Double, h: Double) {
        let this = jsObject
        _ = this[Strings.strokeRect].function!(this: this, arguments: [x.jsValue(), y.jsValue(), w.jsValue(), h.jsValue()])
    }
}
