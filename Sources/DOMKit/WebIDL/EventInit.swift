// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EventInit: BridgedDictionary {
    public convenience init(bubbles: Bool, cancelable: Bool, composed: Bool) {
        let object = JSObject.global.Object.function!.new()
        object[Strings.bubbles] = bubbles.jsValue()
        object[Strings.cancelable] = cancelable.jsValue()
        object[Strings.composed] = composed.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _bubbles = ReadWriteAttribute(jsObject: object, name: Strings.bubbles)
        _cancelable = ReadWriteAttribute(jsObject: object, name: Strings.cancelable)
        _composed = ReadWriteAttribute(jsObject: object, name: Strings.composed)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var bubbles: Bool

    @ReadWriteAttribute
    public var cancelable: Bool

    @ReadWriteAttribute
    public var composed: Bool
}
