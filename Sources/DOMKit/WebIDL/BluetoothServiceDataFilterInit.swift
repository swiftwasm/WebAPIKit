// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BluetoothServiceDataFilterInit: BridgedDictionary {
    public convenience init(service: BluetoothServiceUUID) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.service] = service.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _service = ReadWriteAttribute(jsObject: object, name: Strings.service)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var service: BluetoothServiceUUID
}
