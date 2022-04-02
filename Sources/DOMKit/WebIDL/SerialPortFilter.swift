// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SerialPortFilter: BridgedDictionary {
    public convenience init(usbVendorId: UInt16, usbProductId: UInt16) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.usbVendorId] = usbVendorId.jsValue()
        object[Strings.usbProductId] = usbProductId.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _usbVendorId = ReadWriteAttribute(jsObject: object, name: Strings.usbVendorId)
        _usbProductId = ReadWriteAttribute(jsObject: object, name: Strings.usbProductId)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var usbVendorId: UInt16

    @ReadWriteAttribute
    public var usbProductId: UInt16
}