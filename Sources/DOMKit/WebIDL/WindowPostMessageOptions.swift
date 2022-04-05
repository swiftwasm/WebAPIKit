// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WindowPostMessageOptions: BridgedDictionary {
    public convenience init(targetOrigin: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.targetOrigin] = targetOrigin.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _targetOrigin = ReadWriteAttribute(jsObject: object, name: Strings.targetOrigin)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var targetOrigin: String
}
