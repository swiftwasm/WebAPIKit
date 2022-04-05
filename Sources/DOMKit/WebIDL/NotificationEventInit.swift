// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NotificationEventInit: BridgedDictionary {
    public convenience init(notification: Notification, action: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.notification] = notification.jsValue
        object[Strings.action] = action.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _notification = ReadWriteAttribute(jsObject: object, name: Strings.notification)
        _action = ReadWriteAttribute(jsObject: object, name: Strings.action)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var notification: Notification

    @ReadWriteAttribute
    public var action: String
}
