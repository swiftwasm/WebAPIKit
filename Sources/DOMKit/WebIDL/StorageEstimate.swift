// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StorageEstimate: BridgedDictionary {
    public convenience init(usage: UInt64, quota: UInt64) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.usage] = usage.jsValue()
        object[Strings.quota] = quota.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _usage = ReadWriteAttribute(jsObject: object, name: Strings.usage)
        _quota = ReadWriteAttribute(jsObject: object, name: Strings.quota)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var usage: UInt64

    @ReadWriteAttribute
    public var quota: UInt64
}
