// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol CanvasDrawPath: JSBridgedClass {}
public extension CanvasDrawPath {
    func beginPath() {
        let this = jsObject
        _ = this[Strings.beginPath].function!(this: this, arguments: [])
    }

    func fill(fillRule: CanvasFillRule? = nil) {
        let this = jsObject
        _ = this[Strings.fill].function!(this: this, arguments: [fillRule?.jsValue() ?? .undefined])
    }

    func fill(path: Path2D, fillRule: CanvasFillRule? = nil) {
        let this = jsObject
        _ = this[Strings.fill].function!(this: this, arguments: [path.jsValue(), fillRule?.jsValue() ?? .undefined])
    }

    func stroke() {
        let this = jsObject
        _ = this[Strings.stroke].function!(this: this, arguments: [])
    }

    func stroke(path: Path2D) {
        let this = jsObject
        _ = this[Strings.stroke].function!(this: this, arguments: [path.jsValue()])
    }

    func clip(fillRule: CanvasFillRule? = nil) {
        let this = jsObject
        _ = this[Strings.clip].function!(this: this, arguments: [fillRule?.jsValue() ?? .undefined])
    }

    func clip(path: Path2D, fillRule: CanvasFillRule? = nil) {
        let this = jsObject
        _ = this[Strings.clip].function!(this: this, arguments: [path.jsValue(), fillRule?.jsValue() ?? .undefined])
    }

    func isPointInPath(x: Double, y: Double, fillRule: CanvasFillRule? = nil) -> Bool {
        let this = jsObject
        return this[Strings.isPointInPath].function!(this: this, arguments: [x.jsValue(), y.jsValue(), fillRule?.jsValue() ?? .undefined]).fromJSValue()!
    }

    func isPointInPath(path: Path2D, x: Double, y: Double, fillRule: CanvasFillRule? = nil) -> Bool {
        let this = jsObject
        return this[Strings.isPointInPath].function!(this: this, arguments: [path.jsValue(), x.jsValue(), y.jsValue(), fillRule?.jsValue() ?? .undefined]).fromJSValue()!
    }

    func isPointInStroke(x: Double, y: Double) -> Bool {
        let this = jsObject
        return this[Strings.isPointInStroke].function!(this: this, arguments: [x.jsValue(), y.jsValue()]).fromJSValue()!
    }

    func isPointInStroke(path: Path2D, x: Double, y: Double) -> Bool {
        let this = jsObject
        return this[Strings.isPointInStroke].function!(this: this, arguments: [path.jsValue(), x.jsValue(), y.jsValue()]).fromJSValue()!
    }
}
