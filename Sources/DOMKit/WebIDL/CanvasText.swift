// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol CanvasText: JSBridgedClass {}
public extension CanvasText {
    @inlinable func fillText(text: String, x: Double, y: Double, maxWidth: Double? = nil) {
        let this = jsObject
        _ = this[Strings.fillText].function!(this: this, arguments: [text.jsValue, x.jsValue, y.jsValue, maxWidth?.jsValue ?? .undefined])
    }

    @inlinable func strokeText(text: String, x: Double, y: Double, maxWidth: Double? = nil) {
        let this = jsObject
        _ = this[Strings.strokeText].function!(this: this, arguments: [text.jsValue, x.jsValue, y.jsValue, maxWidth?.jsValue ?? .undefined])
    }

    @inlinable func measureText(text: String) -> TextMetrics {
        let this = jsObject
        return this[Strings.measureText].function!(this: this, arguments: [text.jsValue]).fromJSValue()!
    }
}
