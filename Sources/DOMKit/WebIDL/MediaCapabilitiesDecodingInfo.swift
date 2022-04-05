// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaCapabilitiesDecodingInfo: BridgedDictionary {
    public convenience init(keySystemAccess: MediaKeySystemAccess, configuration: MediaDecodingConfiguration) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.keySystemAccess] = keySystemAccess.jsValue
        object[Strings.configuration] = configuration.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _keySystemAccess = ReadWriteAttribute(jsObject: object, name: Strings.keySystemAccess)
        _configuration = ReadWriteAttribute(jsObject: object, name: Strings.configuration)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var keySystemAccess: MediaKeySystemAccess

    @ReadWriteAttribute
    public var configuration: MediaDecodingConfiguration
}
