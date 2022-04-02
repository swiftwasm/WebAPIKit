// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaPositionState: BridgedDictionary {
    public convenience init(duration: Double, playbackRate: Double, position: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.duration] = duration.jsValue()
        object[Strings.playbackRate] = playbackRate.jsValue()
        object[Strings.position] = position.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _duration = ReadWriteAttribute(jsObject: object, name: Strings.duration)
        _playbackRate = ReadWriteAttribute(jsObject: object, name: Strings.playbackRate)
        _position = ReadWriteAttribute(jsObject: object, name: Strings.position)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var duration: Double

    @ReadWriteAttribute
    public var playbackRate: Double

    @ReadWriteAttribute
    public var position: Double
}
