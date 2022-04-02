// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AnimationPlaybackEventInit: BridgedDictionary {
    public convenience init(currentTime: CSSNumberish?, timelineTime: CSSNumberish?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.currentTime] = currentTime.jsValue()
        object[Strings.timelineTime] = timelineTime.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _currentTime = ReadWriteAttribute(jsObject: object, name: Strings.currentTime)
        _timelineTime = ReadWriteAttribute(jsObject: object, name: Strings.timelineTime)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var currentTime: CSSNumberish?

    @ReadWriteAttribute
    public var timelineTime: CSSNumberish?
}
