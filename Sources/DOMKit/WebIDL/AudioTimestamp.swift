// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioTimestamp: BridgedDictionary {
    public convenience init(contextTime: Double, performanceTime: DOMHighResTimeStamp) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.contextTime] = contextTime.jsValue()
        object[Strings.performanceTime] = performanceTime.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _contextTime = ReadWriteAttribute(jsObject: object, name: Strings.contextTime)
        _performanceTime = ReadWriteAttribute(jsObject: object, name: Strings.performanceTime)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var contextTime: Double

    @ReadWriteAttribute
    public var performanceTime: DOMHighResTimeStamp
}
