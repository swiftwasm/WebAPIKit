// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioProcessingEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.AudioProcessingEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _playbackTime = ReadonlyAttribute(jsObject: jsObject, name: Strings.playbackTime)
        _inputBuffer = ReadonlyAttribute(jsObject: jsObject, name: Strings.inputBuffer)
        _outputBuffer = ReadonlyAttribute(jsObject: jsObject, name: Strings.outputBuffer)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: AudioProcessingEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var playbackTime: Double

    @ReadonlyAttribute
    public var inputBuffer: AudioBuffer

    @ReadonlyAttribute
    public var outputBuffer: AudioBuffer
}
