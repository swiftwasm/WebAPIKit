// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCLocalSessionDescriptionInit: BridgedDictionary {
    public convenience init(type: RTCSdpType, sdp: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue()
        object[Strings.sdp] = sdp.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _sdp = ReadWriteAttribute(jsObject: object, name: Strings.sdp)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: RTCSdpType

    @ReadWriteAttribute
    public var sdp: String
}
