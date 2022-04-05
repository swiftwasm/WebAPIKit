// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PerformanceObserverCallbackOptions: BridgedDictionary {
    public convenience init(droppedEntriesCount: UInt64) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.droppedEntriesCount] = droppedEntriesCount.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _droppedEntriesCount = ReadWriteAttribute(jsObject: object, name: Strings.droppedEntriesCount)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var droppedEntriesCount: UInt64
}
