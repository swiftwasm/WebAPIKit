// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USBPermissionDescriptor: BridgedDictionary {
    public convenience init(filters: [USBDeviceFilter]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.filters] = filters.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _filters = ReadWriteAttribute(jsObject: object, name: Strings.filters)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var filters: [USBDeviceFilter]
}