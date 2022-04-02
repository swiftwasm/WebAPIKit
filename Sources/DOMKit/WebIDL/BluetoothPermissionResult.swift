// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BluetoothPermissionResult: PermissionStatus {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.BluetoothPermissionResult].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _devices = ReadWriteAttribute(jsObject: jsObject, name: Strings.devices)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var devices: [BluetoothDevice]
}
