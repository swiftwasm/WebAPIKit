// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PushPermissionDescriptor: BridgedDictionary {
    public convenience init(userVisibleOnly: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.userVisibleOnly] = userVisibleOnly.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _userVisibleOnly = ReadWriteAttribute(jsObject: object, name: Strings.userVisibleOnly)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var userVisibleOnly: Bool
}
