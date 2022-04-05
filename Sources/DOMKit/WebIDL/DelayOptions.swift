// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DelayOptions: BridgedDictionary {
    public convenience init(maxDelayTime: Double, delayTime: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.maxDelayTime] = maxDelayTime.jsValue
        object[Strings.delayTime] = delayTime.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _maxDelayTime = ReadWriteAttribute(jsObject: object, name: Strings.maxDelayTime)
        _delayTime = ReadWriteAttribute(jsObject: object, name: Strings.delayTime)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var maxDelayTime: Double

    @ReadWriteAttribute
    public var delayTime: Double
}
