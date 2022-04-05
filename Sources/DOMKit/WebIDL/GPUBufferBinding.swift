// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUBufferBinding: BridgedDictionary {
    public convenience init(buffer: GPUBuffer, offset: GPUSize64, size: GPUSize64) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.buffer] = buffer.jsValue
        object[Strings.offset] = offset.jsValue
        object[Strings.size] = size.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _buffer = ReadWriteAttribute(jsObject: object, name: Strings.buffer)
        _offset = ReadWriteAttribute(jsObject: object, name: Strings.offset)
        _size = ReadWriteAttribute(jsObject: object, name: Strings.size)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var buffer: GPUBuffer

    @ReadWriteAttribute
    public var offset: GPUSize64

    @ReadWriteAttribute
    public var size: GPUSize64
}
