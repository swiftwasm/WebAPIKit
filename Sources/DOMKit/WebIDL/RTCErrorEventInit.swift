// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCErrorEventInit: BridgedDictionary {
    public convenience init(error: RTCError) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.error] = error.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _error = ReadWriteAttribute(jsObject: object, name: Strings.error)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var error: RTCError
}
