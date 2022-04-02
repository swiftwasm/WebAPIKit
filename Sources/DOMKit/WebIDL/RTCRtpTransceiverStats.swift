// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpTransceiverStats: BridgedDictionary {
    public convenience init(senderId: String, receiverId: String, mid: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.senderId] = senderId.jsValue()
        object[Strings.receiverId] = receiverId.jsValue()
        object[Strings.mid] = mid.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _senderId = ReadWriteAttribute(jsObject: object, name: Strings.senderId)
        _receiverId = ReadWriteAttribute(jsObject: object, name: Strings.receiverId)
        _mid = ReadWriteAttribute(jsObject: object, name: Strings.mid)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var senderId: String

    @ReadWriteAttribute
    public var receiverId: String

    @ReadWriteAttribute
    public var mid: String
}