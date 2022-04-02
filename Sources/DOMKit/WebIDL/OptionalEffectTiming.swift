// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class OptionalEffectTiming: BridgedDictionary {
    public convenience init(delay: Double, endDelay: Double, fill: FillMode, iterationStart: Double, iterations: Double, duration: __UNSUPPORTED_UNION__, direction: PlaybackDirection, easing: String, playbackRate: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.delay] = delay.jsValue()
        object[Strings.endDelay] = endDelay.jsValue()
        object[Strings.fill] = fill.jsValue()
        object[Strings.iterationStart] = iterationStart.jsValue()
        object[Strings.iterations] = iterations.jsValue()
        object[Strings.duration] = duration.jsValue()
        object[Strings.direction] = direction.jsValue()
        object[Strings.easing] = easing.jsValue()
        object[Strings.playbackRate] = playbackRate.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _delay = ReadWriteAttribute(jsObject: object, name: Strings.delay)
        _endDelay = ReadWriteAttribute(jsObject: object, name: Strings.endDelay)
        _fill = ReadWriteAttribute(jsObject: object, name: Strings.fill)
        _iterationStart = ReadWriteAttribute(jsObject: object, name: Strings.iterationStart)
        _iterations = ReadWriteAttribute(jsObject: object, name: Strings.iterations)
        _duration = ReadWriteAttribute(jsObject: object, name: Strings.duration)
        _direction = ReadWriteAttribute(jsObject: object, name: Strings.direction)
        _easing = ReadWriteAttribute(jsObject: object, name: Strings.easing)
        _playbackRate = ReadWriteAttribute(jsObject: object, name: Strings.playbackRate)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var delay: Double

    @ReadWriteAttribute
    public var endDelay: Double

    @ReadWriteAttribute
    public var fill: FillMode

    @ReadWriteAttribute
    public var iterationStart: Double

    @ReadWriteAttribute
    public var iterations: Double

    @ReadWriteAttribute
    public var duration: __UNSUPPORTED_UNION__

    @ReadWriteAttribute
    public var direction: PlaybackDirection

    @ReadWriteAttribute
    public var easing: String

    @ReadWriteAttribute
    public var playbackRate: Double
}
