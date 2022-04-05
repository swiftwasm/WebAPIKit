// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IdleRequestOptions: BridgedDictionary {
    public convenience init(timeout: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.timeout] = timeout.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _timeout = ReadWriteAttribute(jsObject: object, name: Strings.timeout)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var timeout: UInt32
}
