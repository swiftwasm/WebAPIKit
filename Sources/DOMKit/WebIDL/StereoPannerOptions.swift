// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StereoPannerOptions: BridgedDictionary {
    public convenience init(pan: Float) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.pan] = pan.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _pan = ReadWriteAttribute(jsObject: object, name: Strings.pan)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var pan: Float
}
