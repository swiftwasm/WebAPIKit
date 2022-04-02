// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioContextOptions: BridgedDictionary {
    public convenience init(latencyHint: AudioContextLatencyCategory_or_Double, sampleRate: Float) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.latencyHint] = latencyHint.jsValue()
        object[Strings.sampleRate] = sampleRate.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _latencyHint = ReadWriteAttribute(jsObject: object, name: Strings.latencyHint)
        _sampleRate = ReadWriteAttribute(jsObject: object, name: Strings.sampleRate)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var latencyHint: AudioContextLatencyCategory_or_Double

    @ReadWriteAttribute
    public var sampleRate: Float
}
