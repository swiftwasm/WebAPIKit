// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoEncoderInit: BridgedDictionary {
    public convenience init(output: @escaping EncodedVideoChunkOutputCallback, error: @escaping WebCodecsErrorCallback) {
        let object = JSObject.global[Strings.Object].function!.new()
        ClosureAttribute2Void[Strings.output, in: object] = output
        ClosureAttribute1Void[Strings.error, in: object] = error
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _output = ClosureAttribute2Void(jsObject: object, name: Strings.output)
        _error = ClosureAttribute1Void(jsObject: object, name: Strings.error)
        super.init(unsafelyWrapping: object)
    }

    @ClosureAttribute2Void
    public var output: EncodedVideoChunkOutputCallback

    @ClosureAttribute1Void
    public var error: WebCodecsErrorCallback
}