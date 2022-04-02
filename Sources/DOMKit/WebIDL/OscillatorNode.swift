// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class OscillatorNode: AudioScheduledSourceNode {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.OscillatorNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        _frequency = ReadonlyAttribute(jsObject: jsObject, name: Strings.frequency)
        _detune = ReadonlyAttribute(jsObject: jsObject, name: Strings.detune)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(context: BaseAudioContext, options: OscillatorOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [context.jsValue(), options?.jsValue() ?? .undefined]))
    }

    @ReadWriteAttribute
    public var type: OscillatorType

    @ReadonlyAttribute
    public var frequency: AudioParam

    @ReadonlyAttribute
    public var detune: AudioParam

    @inlinable public func setPeriodicWave(periodicWave: PeriodicWave) {
        let this = jsObject
        _ = this[Strings.setPeriodicWave].function!(this: this, arguments: [periodicWave.jsValue()])
    }
}
