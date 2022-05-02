// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoDecoderSupport: BridgedDictionary {
    public convenience init(supported: Bool, config: VideoDecoderConfig) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.supported] = supported.jsValue
        object[Strings.config] = config.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _supported = ReadWriteAttribute(jsObject: object, name: Strings.supported)
        _config = ReadWriteAttribute(jsObject: object, name: Strings.config)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var supported: Bool

    @ReadWriteAttribute
    public var config: VideoDecoderConfig
}
