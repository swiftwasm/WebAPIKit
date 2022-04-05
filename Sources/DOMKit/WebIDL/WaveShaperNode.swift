// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WaveShaperNode: AudioNode {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.WaveShaperNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _curve = ReadWriteAttribute(jsObject: jsObject, name: Strings.curve)
        _oversample = ReadWriteAttribute(jsObject: jsObject, name: Strings.oversample)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(context: BaseAudioContext, options: WaveShaperOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [context.jsValue, options?.jsValue ?? .undefined]))
    }

    @ReadWriteAttribute
    public var curve: Float32Array?

    @ReadWriteAttribute
    public var oversample: OverSampleType
}
