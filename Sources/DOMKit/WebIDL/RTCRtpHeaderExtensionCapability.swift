// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpHeaderExtensionCapability: BridgedDictionary {
    public convenience init(uri: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.uri] = uri.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _uri = ReadWriteAttribute(jsObject: object, name: Strings.uri)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var uri: String
}