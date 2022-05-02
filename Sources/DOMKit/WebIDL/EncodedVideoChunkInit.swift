// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EncodedVideoChunkInit: BridgedDictionary {
    public convenience init(type: EncodedVideoChunkType, timestamp: Int64, duration: UInt64, data: BufferSource) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue
        object[Strings.timestamp] = timestamp.jsValue
        object[Strings.duration] = duration.jsValue
        object[Strings.data] = data.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _timestamp = ReadWriteAttribute(jsObject: object, name: Strings.timestamp)
        _duration = ReadWriteAttribute(jsObject: object, name: Strings.duration)
        _data = ReadWriteAttribute(jsObject: object, name: Strings.data)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: EncodedVideoChunkType

    @ReadWriteAttribute
    public var timestamp: Int64

    @ReadWriteAttribute
    public var duration: UInt64

    @ReadWriteAttribute
    public var data: BufferSource
}
