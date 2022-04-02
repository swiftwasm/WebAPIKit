// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WebTransportErrorInit: BridgedDictionary {
    public convenience init(streamErrorCode: UInt8, message: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.streamErrorCode] = streamErrorCode.jsValue()
        object[Strings.message] = message.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _streamErrorCode = ReadWriteAttribute(jsObject: object, name: Strings.streamErrorCode)
        _message = ReadWriteAttribute(jsObject: object, name: Strings.message)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var streamErrorCode: UInt8

    @ReadWriteAttribute
    public var message: String
}
