// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ComputePressureRecord: BridgedDictionary {
    public convenience init(source: ComputePressureSource, state: ComputePressureState, factors: [ComputePressureFactor], time: DOMHighResTimeStamp) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.source] = source.jsValue()
        object[Strings.state] = state.jsValue()
        object[Strings.factors] = factors.jsValue()
        object[Strings.time] = time.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _source = ReadWriteAttribute(jsObject: object, name: Strings.source)
        _state = ReadWriteAttribute(jsObject: object, name: Strings.state)
        _factors = ReadWriteAttribute(jsObject: object, name: Strings.factors)
        _time = ReadWriteAttribute(jsObject: object, name: Strings.time)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var source: ComputePressureSource

    @ReadWriteAttribute
    public var state: ComputePressureState

    @ReadWriteAttribute
    public var factors: [ComputePressureFactor]

    @ReadWriteAttribute
    public var time: DOMHighResTimeStamp
}
