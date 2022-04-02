// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Bluetooth: EventTarget, BluetoothDeviceEventHandlers, CharacteristicEventHandlers, ServiceEventHandlers {
    override public class var constructor: JSFunction { JSObject.global[Strings.Bluetooth].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onavailabilitychanged = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onavailabilitychanged)
        _referringDevice = ReadonlyAttribute(jsObject: jsObject, name: Strings.referringDevice)
        super.init(unsafelyWrapping: jsObject)
    }

    public func getAvailability() -> JSPromise {
        jsObject[Strings.getAvailability]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getAvailability() async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.getAvailability]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ClosureAttribute.Optional1
    public var onavailabilitychanged: EventHandler

    @ReadonlyAttribute
    public var referringDevice: BluetoothDevice?

    public func getDevices() -> JSPromise {
        jsObject[Strings.getDevices]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getDevices() async throws -> [BluetoothDevice] {
        let _promise: JSPromise = jsObject[Strings.getDevices]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func requestDevice(options: RequestDeviceOptions? = nil) -> JSPromise {
        jsObject[Strings.requestDevice]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func requestDevice(options: RequestDeviceOptions? = nil) async throws -> BluetoothDevice {
        let _promise: JSPromise = jsObject[Strings.requestDevice]!(options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
