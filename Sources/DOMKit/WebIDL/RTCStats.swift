// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCStats: BridgedDictionary {
    public convenience init(timestamp: DOMHighResTimeStamp, type: RTCStatsType, id: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.timestamp] = timestamp.jsValue
        object[Strings.type] = type.jsValue
        object[Strings.id] = id.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _timestamp = ReadWriteAttribute(jsObject: object, name: Strings.timestamp)
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _id = ReadWriteAttribute(jsObject: object, name: Strings.id)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var timestamp: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var type: RTCStatsType

    @ReadWriteAttribute
    public var id: String
}
