// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ReadableStreamBYOBReadResult: BridgedDictionary {
    public convenience init(value: ArrayBufferView_or_Void, done: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.value] = value.jsValue()
        object[Strings.done] = done.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _value = ReadWriteAttribute(jsObject: object, name: Strings.value)
        _done = ReadWriteAttribute(jsObject: object, name: Strings.done)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var value: ArrayBufferView_or_Void

    @ReadWriteAttribute
    public var done: Bool
}
