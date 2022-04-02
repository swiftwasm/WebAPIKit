// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USBDevice: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.USBDevice].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _usbVersionMajor = ReadonlyAttribute(jsObject: jsObject, name: Strings.usbVersionMajor)
        _usbVersionMinor = ReadonlyAttribute(jsObject: jsObject, name: Strings.usbVersionMinor)
        _usbVersionSubminor = ReadonlyAttribute(jsObject: jsObject, name: Strings.usbVersionSubminor)
        _deviceClass = ReadonlyAttribute(jsObject: jsObject, name: Strings.deviceClass)
        _deviceSubclass = ReadonlyAttribute(jsObject: jsObject, name: Strings.deviceSubclass)
        _deviceProtocol = ReadonlyAttribute(jsObject: jsObject, name: Strings.deviceProtocol)
        _vendorId = ReadonlyAttribute(jsObject: jsObject, name: Strings.vendorId)
        _productId = ReadonlyAttribute(jsObject: jsObject, name: Strings.productId)
        _deviceVersionMajor = ReadonlyAttribute(jsObject: jsObject, name: Strings.deviceVersionMajor)
        _deviceVersionMinor = ReadonlyAttribute(jsObject: jsObject, name: Strings.deviceVersionMinor)
        _deviceVersionSubminor = ReadonlyAttribute(jsObject: jsObject, name: Strings.deviceVersionSubminor)
        _manufacturerName = ReadonlyAttribute(jsObject: jsObject, name: Strings.manufacturerName)
        _productName = ReadonlyAttribute(jsObject: jsObject, name: Strings.productName)
        _serialNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.serialNumber)
        _configuration = ReadonlyAttribute(jsObject: jsObject, name: Strings.configuration)
        _configurations = ReadonlyAttribute(jsObject: jsObject, name: Strings.configurations)
        _opened = ReadonlyAttribute(jsObject: jsObject, name: Strings.opened)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var usbVersionMajor: UInt8

    @ReadonlyAttribute
    public var usbVersionMinor: UInt8

    @ReadonlyAttribute
    public var usbVersionSubminor: UInt8

    @ReadonlyAttribute
    public var deviceClass: UInt8

    @ReadonlyAttribute
    public var deviceSubclass: UInt8

    @ReadonlyAttribute
    public var deviceProtocol: UInt8

    @ReadonlyAttribute
    public var vendorId: UInt16

    @ReadonlyAttribute
    public var productId: UInt16

    @ReadonlyAttribute
    public var deviceVersionMajor: UInt8

    @ReadonlyAttribute
    public var deviceVersionMinor: UInt8

    @ReadonlyAttribute
    public var deviceVersionSubminor: UInt8

    @ReadonlyAttribute
    public var manufacturerName: String?

    @ReadonlyAttribute
    public var productName: String?

    @ReadonlyAttribute
    public var serialNumber: String?

    @ReadonlyAttribute
    public var configuration: USBConfiguration?

    @ReadonlyAttribute
    public var configurations: [USBConfiguration]

    @ReadonlyAttribute
    public var opened: Bool

    public func open() -> JSPromise {
        let this = jsObject
        return this[Strings.open].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func open() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.open].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }

    public func close() -> JSPromise {
        let this = jsObject
        return this[Strings.close].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func close() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.close].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }

    public func forget() -> JSPromise {
        let this = jsObject
        return this[Strings.forget].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func forget() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.forget].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }

    public func selectConfiguration(configurationValue: UInt8) -> JSPromise {
        let this = jsObject
        return this[Strings.selectConfiguration].function!(this: this, arguments: [configurationValue.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func selectConfiguration(configurationValue: UInt8) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.selectConfiguration].function!(this: this, arguments: [configurationValue.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func claimInterface(interfaceNumber: UInt8) -> JSPromise {
        let this = jsObject
        return this[Strings.claimInterface].function!(this: this, arguments: [interfaceNumber.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func claimInterface(interfaceNumber: UInt8) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.claimInterface].function!(this: this, arguments: [interfaceNumber.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func releaseInterface(interfaceNumber: UInt8) -> JSPromise {
        let this = jsObject
        return this[Strings.releaseInterface].function!(this: this, arguments: [interfaceNumber.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func releaseInterface(interfaceNumber: UInt8) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.releaseInterface].function!(this: this, arguments: [interfaceNumber.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func selectAlternateInterface(interfaceNumber: UInt8, alternateSetting: UInt8) -> JSPromise {
        let this = jsObject
        return this[Strings.selectAlternateInterface].function!(this: this, arguments: [interfaceNumber.jsValue(), alternateSetting.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func selectAlternateInterface(interfaceNumber: UInt8, alternateSetting: UInt8) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.selectAlternateInterface].function!(this: this, arguments: [interfaceNumber.jsValue(), alternateSetting.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func controlTransferIn(setup: USBControlTransferParameters, length: UInt16) -> JSPromise {
        let this = jsObject
        return this[Strings.controlTransferIn].function!(this: this, arguments: [setup.jsValue(), length.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func controlTransferIn(setup: USBControlTransferParameters, length: UInt16) async throws -> USBInTransferResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.controlTransferIn].function!(this: this, arguments: [setup.jsValue(), length.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func controlTransferOut(setup: USBControlTransferParameters, data: BufferSource? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.controlTransferOut].function!(this: this, arguments: [setup.jsValue(), data?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func controlTransferOut(setup: USBControlTransferParameters, data: BufferSource? = nil) async throws -> USBOutTransferResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.controlTransferOut].function!(this: this, arguments: [setup.jsValue(), data?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func clearHalt(direction: USBDirection, endpointNumber: UInt8) -> JSPromise {
        let this = jsObject
        return this[Strings.clearHalt].function!(this: this, arguments: [direction.jsValue(), endpointNumber.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func clearHalt(direction: USBDirection, endpointNumber: UInt8) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.clearHalt].function!(this: this, arguments: [direction.jsValue(), endpointNumber.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func transferIn(endpointNumber: UInt8, length: UInt32) -> JSPromise {
        let this = jsObject
        return this[Strings.transferIn].function!(this: this, arguments: [endpointNumber.jsValue(), length.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func transferIn(endpointNumber: UInt8, length: UInt32) async throws -> USBInTransferResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.transferIn].function!(this: this, arguments: [endpointNumber.jsValue(), length.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func transferOut(endpointNumber: UInt8, data: BufferSource) -> JSPromise {
        let this = jsObject
        return this[Strings.transferOut].function!(this: this, arguments: [endpointNumber.jsValue(), data.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func transferOut(endpointNumber: UInt8, data: BufferSource) async throws -> USBOutTransferResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.transferOut].function!(this: this, arguments: [endpointNumber.jsValue(), data.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func isochronousTransferIn(endpointNumber: UInt8, packetLengths: [UInt32]) -> JSPromise {
        let this = jsObject
        return this[Strings.isochronousTransferIn].function!(this: this, arguments: [endpointNumber.jsValue(), packetLengths.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func isochronousTransferIn(endpointNumber: UInt8, packetLengths: [UInt32]) async throws -> USBIsochronousInTransferResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.isochronousTransferIn].function!(this: this, arguments: [endpointNumber.jsValue(), packetLengths.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func isochronousTransferOut(endpointNumber: UInt8, data: BufferSource, packetLengths: [UInt32]) -> JSPromise {
        let this = jsObject
        return this[Strings.isochronousTransferOut].function!(this: this, arguments: [endpointNumber.jsValue(), data.jsValue(), packetLengths.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func isochronousTransferOut(endpointNumber: UInt8, data: BufferSource, packetLengths: [UInt32]) async throws -> USBIsochronousOutTransferResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.isochronousTransferOut].function!(this: this, arguments: [endpointNumber.jsValue(), data.jsValue(), packetLengths.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func reset() -> JSPromise {
        let this = jsObject
        return this[Strings.reset].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func reset() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.reset].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }
}
