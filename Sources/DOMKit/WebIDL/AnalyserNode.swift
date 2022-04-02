// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AnalyserNode: AudioNode {
    override public class var constructor: JSFunction { JSObject.global[Strings.AnalyserNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _fftSize = ReadWriteAttribute(jsObject: jsObject, name: Strings.fftSize)
        _frequencyBinCount = ReadonlyAttribute(jsObject: jsObject, name: Strings.frequencyBinCount)
        _minDecibels = ReadWriteAttribute(jsObject: jsObject, name: Strings.minDecibels)
        _maxDecibels = ReadWriteAttribute(jsObject: jsObject, name: Strings.maxDecibels)
        _smoothingTimeConstant = ReadWriteAttribute(jsObject: jsObject, name: Strings.smoothingTimeConstant)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(context: BaseAudioContext, options: AnalyserOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [context.jsValue(), options?.jsValue() ?? .undefined]))
    }

    public func getFloatFrequencyData(array: Float32Array) {
        let this = jsObject
        _ = this[Strings.getFloatFrequencyData].function!(this: this, arguments: [array.jsValue()])
    }

    public func getByteFrequencyData(array: Uint8Array) {
        let this = jsObject
        _ = this[Strings.getByteFrequencyData].function!(this: this, arguments: [array.jsValue()])
    }

    public func getFloatTimeDomainData(array: Float32Array) {
        let this = jsObject
        _ = this[Strings.getFloatTimeDomainData].function!(this: this, arguments: [array.jsValue()])
    }

    public func getByteTimeDomainData(array: Uint8Array) {
        let this = jsObject
        _ = this[Strings.getByteTimeDomainData].function!(this: this, arguments: [array.jsValue()])
    }

    @ReadWriteAttribute
    public var fftSize: UInt32

    @ReadonlyAttribute
    public var frequencyBinCount: UInt32

    @ReadWriteAttribute
    public var minDecibels: Double

    @ReadWriteAttribute
    public var maxDecibels: Double

    @ReadWriteAttribute
    public var smoothingTimeConstant: Double
}
