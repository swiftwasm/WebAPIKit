// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TokenBinding: BridgedDictionary {
    public convenience init(status: String, id: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.status] = status.jsValue()
        object[Strings.id] = id.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _status = ReadWriteAttribute(jsObject: object, name: Strings.status)
        _id = ReadWriteAttribute(jsObject: object, name: Strings.id)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var status: String

    @ReadWriteAttribute
    public var id: String
}