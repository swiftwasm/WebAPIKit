// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USBPermissionStorage: BridgedDictionary {
    public convenience init(allowedDevices: [AllowedUSBDevice]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.allowedDevices] = allowedDevices.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _allowedDevices = ReadWriteAttribute(jsObject: object, name: Strings.allowedDevices)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var allowedDevices: [AllowedUSBDevice]
}
