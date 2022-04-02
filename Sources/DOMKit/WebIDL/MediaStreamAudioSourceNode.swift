// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaStreamAudioSourceNode: AudioNode {
    override public class var constructor: JSFunction { JSObject.global[Strings.MediaStreamAudioSourceNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _mediaStream = ReadonlyAttribute(jsObject: jsObject, name: Strings.mediaStream)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(context: AudioContext, options: MediaStreamAudioSourceOptions) {
        self.init(unsafelyWrapping: Self.constructor.new(context.jsValue(), options.jsValue()))
    }

    @ReadonlyAttribute
    public var mediaStream: MediaStream
}