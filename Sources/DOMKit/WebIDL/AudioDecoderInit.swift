// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioDecoderInit: BridgedDictionary {
    public convenience init(output: @escaping AudioDataOutputCallback, error: @escaping WebCodecsErrorCallback) {
        let object = JSObject.global[Strings.Object].function!.new()
        ClosureAttribute.Required1[Strings.output, in: object] = output
        ClosureAttribute.Required1[Strings.error, in: object] = error
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _output = ClosureAttribute.Required1(jsObject: object, name: Strings.output)
        _error = ClosureAttribute.Required1(jsObject: object, name: Strings.error)
        super.init(unsafelyWrapping: object)
    }

    @ClosureAttribute.Required1
    public var output: AudioDataOutputCallback

    @ClosureAttribute.Required1
    public var error: WebCodecsErrorCallback
}