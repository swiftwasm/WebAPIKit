// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioBufferSourceNode: AudioScheduledSourceNode {
    override public class var constructor: JSFunction { JSObject.global[Strings.AudioBufferSourceNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _buffer = ReadWriteAttribute(jsObject: jsObject, name: Strings.buffer)
        _playbackRate = ReadonlyAttribute(jsObject: jsObject, name: Strings.playbackRate)
        _detune = ReadonlyAttribute(jsObject: jsObject, name: Strings.detune)
        _loop = ReadWriteAttribute(jsObject: jsObject, name: Strings.loop)
        _loopStart = ReadWriteAttribute(jsObject: jsObject, name: Strings.loopStart)
        _loopEnd = ReadWriteAttribute(jsObject: jsObject, name: Strings.loopEnd)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(context: BaseAudioContext, options: AudioBufferSourceOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [context.jsValue(), options?.jsValue() ?? .undefined]))
    }

    @ReadWriteAttribute
    public var buffer: AudioBuffer?

    @ReadonlyAttribute
    public var playbackRate: AudioParam

    @ReadonlyAttribute
    public var detune: AudioParam

    @ReadWriteAttribute
    public var loop: Bool

    @ReadWriteAttribute
    public var loopStart: Double

    @ReadWriteAttribute
    public var loopEnd: Double

    override public func start(when: Double? = nil, offset: Double? = nil, duration: Double? = nil) {
        let this = jsObject
        _ = this[Strings.start].function!(this: this, arguments: [when?.jsValue() ?? .undefined, offset?.jsValue() ?? .undefined, duration?.jsValue() ?? .undefined])
    }
}
