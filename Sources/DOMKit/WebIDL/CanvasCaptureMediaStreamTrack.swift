// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CanvasCaptureMediaStreamTrack: MediaStreamTrack {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CanvasCaptureMediaStreamTrack].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _canvas = ReadonlyAttribute(jsObject: jsObject, name: Strings.canvas)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var canvas: HTMLCanvasElement

    @inlinable public func requestFrame() {
        let this = jsObject
        _ = this[Strings.requestFrame].function!(this: this, arguments: [])
    }
}
