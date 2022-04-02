// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioWorkletGlobalScope: WorkletGlobalScope {
    override public class var constructor: JSFunction { JSObject.global[Strings.AudioWorkletGlobalScope].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _currentFrame = ReadonlyAttribute(jsObject: jsObject, name: Strings.currentFrame)
        _currentTime = ReadonlyAttribute(jsObject: jsObject, name: Strings.currentTime)
        _sampleRate = ReadonlyAttribute(jsObject: jsObject, name: Strings.sampleRate)
        super.init(unsafelyWrapping: jsObject)
    }

    public func registerProcessor(name: String, processorCtor: AudioWorkletProcessorConstructor) {
        _ = jsObject[Strings.registerProcessor]!(name.jsValue(), processorCtor.jsValue())
    }

    @ReadonlyAttribute
    public var currentFrame: UInt64

    @ReadonlyAttribute
    public var currentTime: Double

    @ReadonlyAttribute
    public var sampleRate: Float
}
