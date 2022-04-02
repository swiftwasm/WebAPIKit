// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ProfilerSample: BridgedDictionary {
    public convenience init(timestamp: DOMHighResTimeStamp, stackId: UInt64) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.timestamp] = timestamp.jsValue()
        object[Strings.stackId] = stackId.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _timestamp = ReadWriteAttribute(jsObject: object, name: Strings.timestamp)
        _stackId = ReadWriteAttribute(jsObject: object, name: Strings.stackId)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var timestamp: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var stackId: UInt64
}