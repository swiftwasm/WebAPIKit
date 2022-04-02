// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol CanvasImageData: JSBridgedClass {}
public extension CanvasImageData {
    @inlinable func createImageData(sw: Int32, sh: Int32, settings: ImageDataSettings? = nil) -> ImageData {
        let this = jsObject
        return this[Strings.createImageData].function!(this: this, arguments: [sw.jsValue(), sh.jsValue(), settings?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable func createImageData(imagedata: ImageData) -> ImageData {
        let this = jsObject
        return this[Strings.createImageData].function!(this: this, arguments: [imagedata.jsValue()]).fromJSValue()!
    }

    @inlinable func getImageData(sx: Int32, sy: Int32, sw: Int32, sh: Int32, settings: ImageDataSettings? = nil) -> ImageData {
        let this = jsObject
        return this[Strings.getImageData].function!(this: this, arguments: [sx.jsValue(), sy.jsValue(), sw.jsValue(), sh.jsValue(), settings?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable func putImageData(imagedata: ImageData, dx: Int32, dy: Int32) {
        let this = jsObject
        _ = this[Strings.putImageData].function!(this: this, arguments: [imagedata.jsValue(), dx.jsValue(), dy.jsValue()])
    }

    @inlinable func putImageData(imagedata: ImageData, dx: Int32, dy: Int32, dirtyX: Int32, dirtyY: Int32, dirtyWidth: Int32, dirtyHeight: Int32) {
        let _arg0 = imagedata.jsValue()
        let _arg1 = dx.jsValue()
        let _arg2 = dy.jsValue()
        let _arg3 = dirtyX.jsValue()
        let _arg4 = dirtyY.jsValue()
        let _arg5 = dirtyWidth.jsValue()
        let _arg6 = dirtyHeight.jsValue()
        let this = jsObject
        _ = this[Strings.putImageData].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6])
    }
}
