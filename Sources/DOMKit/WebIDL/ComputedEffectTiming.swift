// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ComputedEffectTiming: BridgedDictionary {
    public convenience init(startTime: CSSNumberish, endTime: CSSNumberish, activeDuration: CSSNumberish, localTime: CSSNumberish?, progress: Double?, currentIteration: Double?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.startTime] = startTime.jsValue
        object[Strings.endTime] = endTime.jsValue
        object[Strings.activeDuration] = activeDuration.jsValue
        object[Strings.localTime] = localTime.jsValue
        object[Strings.progress] = progress.jsValue
        object[Strings.currentIteration] = currentIteration.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _startTime = ReadWriteAttribute(jsObject: object, name: Strings.startTime)
        _endTime = ReadWriteAttribute(jsObject: object, name: Strings.endTime)
        _activeDuration = ReadWriteAttribute(jsObject: object, name: Strings.activeDuration)
        _localTime = ReadWriteAttribute(jsObject: object, name: Strings.localTime)
        _progress = ReadWriteAttribute(jsObject: object, name: Strings.progress)
        _currentIteration = ReadWriteAttribute(jsObject: object, name: Strings.currentIteration)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var startTime: CSSNumberish

    @ReadWriteAttribute
    public var endTime: CSSNumberish

    @ReadWriteAttribute
    public var activeDuration: CSSNumberish

    @ReadWriteAttribute
    public var localTime: CSSNumberish?

    @ReadWriteAttribute
    public var progress: Double?

    @ReadWriteAttribute
    public var currentIteration: Double?
}
