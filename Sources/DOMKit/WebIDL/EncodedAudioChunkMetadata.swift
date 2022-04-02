// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EncodedAudioChunkMetadata: BridgedDictionary {
    public convenience init(decoderConfig: AudioDecoderConfig) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.decoderConfig] = decoderConfig.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _decoderConfig = ReadWriteAttribute(jsObject: object, name: Strings.decoderConfig)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var decoderConfig: AudioDecoderConfig
}