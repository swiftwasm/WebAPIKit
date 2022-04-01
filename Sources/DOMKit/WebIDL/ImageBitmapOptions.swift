// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ImageBitmapOptions: BridgedDictionary {
    private enum Keys {
        static let imageOrientation: JSString = "imageOrientation"
        static let resizeWidth: JSString = "resizeWidth"
        static let premultiplyAlpha: JSString = "premultiplyAlpha"
        static let resizeHeight: JSString = "resizeHeight"
        static let resizeQuality: JSString = "resizeQuality"
        static let colorSpaceConversion: JSString = "colorSpaceConversion"
    }

    public convenience init(imageOrientation: ImageOrientation, premultiplyAlpha: PremultiplyAlpha, colorSpaceConversion: ColorSpaceConversion, resizeWidth: UInt32, resizeHeight: UInt32, resizeQuality: ResizeQuality) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.imageOrientation] = imageOrientation.jsValue()
        object[Keys.premultiplyAlpha] = premultiplyAlpha.jsValue()
        object[Keys.colorSpaceConversion] = colorSpaceConversion.jsValue()
        object[Keys.resizeWidth] = resizeWidth.jsValue()
        object[Keys.resizeHeight] = resizeHeight.jsValue()
        object[Keys.resizeQuality] = resizeQuality.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _imageOrientation = ReadWriteAttribute(jsObject: object, name: Keys.imageOrientation)
        _premultiplyAlpha = ReadWriteAttribute(jsObject: object, name: Keys.premultiplyAlpha)
        _colorSpaceConversion = ReadWriteAttribute(jsObject: object, name: Keys.colorSpaceConversion)
        _resizeWidth = ReadWriteAttribute(jsObject: object, name: Keys.resizeWidth)
        _resizeHeight = ReadWriteAttribute(jsObject: object, name: Keys.resizeHeight)
        _resizeQuality = ReadWriteAttribute(jsObject: object, name: Keys.resizeQuality)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var imageOrientation: ImageOrientation

    @ReadWriteAttribute
    public var premultiplyAlpha: PremultiplyAlpha

    @ReadWriteAttribute
    public var colorSpaceConversion: ColorSpaceConversion

    @ReadWriteAttribute
    public var resizeWidth: UInt32

    @ReadWriteAttribute
    public var resizeHeight: UInt32

    @ReadWriteAttribute
    public var resizeQuality: ResizeQuality
}
