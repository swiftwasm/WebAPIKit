// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ImageBitmapRenderingContext: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.ImageBitmapRenderingContext.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _canvas = ReadonlyAttribute(jsObject: jsObject, name: Strings.canvas)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var canvas: __UNSUPPORTED_UNION__

    public func transferFromImageBitmap(bitmap: ImageBitmap?) {
        _ = jsObject[Strings.transferFromImageBitmap]!(bitmap.jsValue())
    }
}
