// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BluetoothPermissionDescriptor: BridgedDictionary {
    public convenience init(deviceId: String, filters: [BluetoothLEScanFilterInit], optionalServices: [BluetoothServiceUUID], optionalManufacturerData: [UInt16], acceptAllDevices: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.deviceId] = deviceId.jsValue
        object[Strings.filters] = filters.jsValue
        object[Strings.optionalServices] = optionalServices.jsValue
        object[Strings.optionalManufacturerData] = optionalManufacturerData.jsValue
        object[Strings.acceptAllDevices] = acceptAllDevices.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _deviceId = ReadWriteAttribute(jsObject: object, name: Strings.deviceId)
        _filters = ReadWriteAttribute(jsObject: object, name: Strings.filters)
        _optionalServices = ReadWriteAttribute(jsObject: object, name: Strings.optionalServices)
        _optionalManufacturerData = ReadWriteAttribute(jsObject: object, name: Strings.optionalManufacturerData)
        _acceptAllDevices = ReadWriteAttribute(jsObject: object, name: Strings.acceptAllDevices)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var deviceId: String

    @ReadWriteAttribute
    public var filters: [BluetoothLEScanFilterInit]

    @ReadWriteAttribute
    public var optionalServices: [BluetoothServiceUUID]

    @ReadWriteAttribute
    public var optionalManufacturerData: [UInt16]

    @ReadWriteAttribute
    public var acceptAllDevices: Bool
}
