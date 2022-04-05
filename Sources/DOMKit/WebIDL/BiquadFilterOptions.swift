// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BiquadFilterOptions: BridgedDictionary {
    public convenience init(type: BiquadFilterType, Q: Float, detune: Float, frequency: Float, gain: Float) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue
        object[Strings.Q] = Q.jsValue
        object[Strings.detune] = detune.jsValue
        object[Strings.frequency] = frequency.jsValue
        object[Strings.gain] = gain.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _Q = ReadWriteAttribute(jsObject: object, name: Strings.Q)
        _detune = ReadWriteAttribute(jsObject: object, name: Strings.detune)
        _frequency = ReadWriteAttribute(jsObject: object, name: Strings.frequency)
        _gain = ReadWriteAttribute(jsObject: object, name: Strings.gain)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: BiquadFilterType

    @ReadWriteAttribute
    public var Q: Float

    @ReadWriteAttribute
    public var detune: Float

    @ReadWriteAttribute
    public var frequency: Float

    @ReadWriteAttribute
    public var gain: Float
}
