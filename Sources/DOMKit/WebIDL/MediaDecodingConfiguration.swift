// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaDecodingConfiguration: BridgedDictionary {
    public convenience init(type: MediaDecodingType, keySystemConfiguration: MediaCapabilitiesKeySystemConfiguration) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue
        object[Strings.keySystemConfiguration] = keySystemConfiguration.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _keySystemConfiguration = ReadWriteAttribute(jsObject: object, name: Strings.keySystemConfiguration)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: MediaDecodingType

    @ReadWriteAttribute
    public var keySystemConfiguration: MediaCapabilitiesKeySystemConfiguration
}
