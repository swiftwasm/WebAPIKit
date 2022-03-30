// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ImageData: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.ImageData.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _width = ReadonlyAttribute(jsObject: jsObject, name: "width")
        _height = ReadonlyAttribute(jsObject: jsObject, name: "height")
        _data = ReadonlyAttribute(jsObject: jsObject, name: "data")
        _colorSpace = ReadonlyAttribute(jsObject: jsObject, name: "colorSpace")
        self.jsObject = jsObject
    }

    public convenience init(sw: UInt32, sh: UInt32, settings: ImageDataSettings? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(sw.jsValue(), sh.jsValue(), settings?.jsValue() ?? .undefined))
    }

    public convenience init(data: Uint8ClampedArray, sw: UInt32, sh: UInt32? = nil, settings: ImageDataSettings? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(data.jsValue(), sw.jsValue(), sh?.jsValue() ?? .undefined, settings?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var width: UInt32

    @ReadonlyAttribute
    public var height: UInt32

    @ReadonlyAttribute
    public var data: Uint8ClampedArray

    @ReadonlyAttribute
    public var colorSpace: PredefinedColorSpace
}
