// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BluetoothDevice: EventTarget, BluetoothDeviceEventHandlers, CharacteristicEventHandlers, ServiceEventHandlers {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.BluetoothDevice].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _gatt = ReadonlyAttribute(jsObject: jsObject, name: Strings.gatt)
        _watchingAdvertisements = ReadonlyAttribute(jsObject: jsObject, name: Strings.watchingAdvertisements)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var name: String?

    @ReadonlyAttribute
    public var gatt: BluetoothRemoteGATTServer?

    @inlinable public func watchAdvertisements(options: WatchAdvertisementsOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.watchAdvertisements].function!(this: this, arguments: [options?.jsValue ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func watchAdvertisements(options: WatchAdvertisementsOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.watchAdvertisements].function!(this: this, arguments: [options?.jsValue ?? .undefined]).fromJSValue()!
        _ = try await _promise.value
    }

    @ReadonlyAttribute
    public var watchingAdvertisements: Bool
}
