// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaCapabilitiesEncodingInfo: BridgedDictionary {
    public convenience init(configuration: MediaEncodingConfiguration) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.configuration] = configuration.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _configuration = ReadWriteAttribute(jsObject: object, name: Strings.configuration)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var configuration: MediaEncodingConfiguration
}