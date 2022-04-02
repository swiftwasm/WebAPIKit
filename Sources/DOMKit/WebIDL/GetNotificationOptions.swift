// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GetNotificationOptions: BridgedDictionary {
    public convenience init(tag: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.tag] = tag.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _tag = ReadWriteAttribute(jsObject: object, name: Strings.tag)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var tag: String
}
