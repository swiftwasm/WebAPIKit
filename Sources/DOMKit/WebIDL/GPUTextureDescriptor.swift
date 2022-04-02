// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUTextureDescriptor: BridgedDictionary {
    public convenience init(size: GPUExtent3D, mipLevelCount: GPUIntegerCoordinate, sampleCount: GPUSize32, dimension: GPUTextureDimension, format: GPUTextureFormat, usage: GPUTextureUsageFlags, viewFormats: [GPUTextureFormat]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.size] = size.jsValue()
        object[Strings.mipLevelCount] = mipLevelCount.jsValue()
        object[Strings.sampleCount] = sampleCount.jsValue()
        object[Strings.dimension] = dimension.jsValue()
        object[Strings.format] = format.jsValue()
        object[Strings.usage] = usage.jsValue()
        object[Strings.viewFormats] = viewFormats.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _size = ReadWriteAttribute(jsObject: object, name: Strings.size)
        _mipLevelCount = ReadWriteAttribute(jsObject: object, name: Strings.mipLevelCount)
        _sampleCount = ReadWriteAttribute(jsObject: object, name: Strings.sampleCount)
        _dimension = ReadWriteAttribute(jsObject: object, name: Strings.dimension)
        _format = ReadWriteAttribute(jsObject: object, name: Strings.format)
        _usage = ReadWriteAttribute(jsObject: object, name: Strings.usage)
        _viewFormats = ReadWriteAttribute(jsObject: object, name: Strings.viewFormats)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var size: GPUExtent3D

    @ReadWriteAttribute
    public var mipLevelCount: GPUIntegerCoordinate

    @ReadWriteAttribute
    public var sampleCount: GPUSize32

    @ReadWriteAttribute
    public var dimension: GPUTextureDimension

    @ReadWriteAttribute
    public var format: GPUTextureFormat

    @ReadWriteAttribute
    public var usage: GPUTextureUsageFlags

    @ReadWriteAttribute
    public var viewFormats: [GPUTextureFormat]
}