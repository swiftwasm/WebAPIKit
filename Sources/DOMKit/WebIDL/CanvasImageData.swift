// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol CanvasImageData: JSBridgedClass {}
public extension CanvasImageData {
    func createImageData(sw: Int32, sh: Int32, settings: ImageDataSettings? = nil) -> ImageData {
        jsObject[Strings.createImageData]!(sw.jsValue(), sh.jsValue(), settings?.jsValue() ?? .undefined).fromJSValue()!
    }

    func createImageData(imagedata: ImageData) -> ImageData {
        jsObject[Strings.createImageData]!(imagedata.jsValue()).fromJSValue()!
    }

    func getImageData(sx: Int32, sy: Int32, sw: Int32, sh: Int32, settings: ImageDataSettings? = nil) -> ImageData {
        jsObject[Strings.getImageData]!(sx.jsValue(), sy.jsValue(), sw.jsValue(), sh.jsValue(), settings?.jsValue() ?? .undefined).fromJSValue()!
    }

    func putImageData(imagedata: ImageData, dx: Int32, dy: Int32) {
        _ = jsObject[Strings.putImageData]!(imagedata.jsValue(), dx.jsValue(), dy.jsValue())
    }

    func putImageData(imagedata: ImageData, dx: Int32, dy: Int32, dirtyX: Int32, dirtyY: Int32, dirtyWidth: Int32, dirtyHeight: Int32) {
        let _arg0 = imagedata.jsValue()
        let _arg1 = dx.jsValue()
        let _arg2 = dy.jsValue()
        let _arg3 = dirtyX.jsValue()
        let _arg4 = dirtyY.jsValue()
        let _arg5 = dirtyWidth.jsValue()
        let _arg6 = dirtyHeight.jsValue()
        _ = jsObject[Strings.putImageData]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6)
    }
}
