// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IIRFilterNode: AudioNode {
    override public class var constructor: JSFunction { JSObject.global[Strings.IIRFilterNode].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(context: BaseAudioContext, options: IIRFilterOptions) {
        self.init(unsafelyWrapping: Self.constructor.new(context.jsValue(), options.jsValue()))
    }

    public func getFrequencyResponse(frequencyHz: Float32Array, magResponse: Float32Array, phaseResponse: Float32Array) {
        _ = jsObject[Strings.getFrequencyResponse]!(frequencyHz.jsValue(), magResponse.jsValue(), phaseResponse.jsValue())
    }
}
