// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaKeyMessageEventInit: BridgedDictionary {
    public convenience init(messageType: MediaKeyMessageType, message: ArrayBuffer) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.messageType] = messageType.jsValue()
        object[Strings.message] = message.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _messageType = ReadWriteAttribute(jsObject: object, name: Strings.messageType)
        _message = ReadWriteAttribute(jsObject: object, name: Strings.message)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var messageType: MediaKeyMessageType

    @ReadWriteAttribute
    public var message: ArrayBuffer
}