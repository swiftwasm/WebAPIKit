// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BluetoothRemoteGATTDescriptor: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.BluetoothRemoteGATTDescriptor].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _characteristic = ReadonlyAttribute(jsObject: jsObject, name: Strings.characteristic)
        _uuid = ReadonlyAttribute(jsObject: jsObject, name: Strings.uuid)
        _value = ReadonlyAttribute(jsObject: jsObject, name: Strings.value)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var characteristic: BluetoothRemoteGATTCharacteristic

    @ReadonlyAttribute
    public var uuid: UUID

    @ReadonlyAttribute
    public var value: DataView?

    @inlinable public func readValue() -> JSPromise {
        let this = jsObject
        return this[Strings.readValue].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func readValue() async throws -> DataView {
        let this = jsObject
        let _promise: JSPromise = this[Strings.readValue].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @inlinable public func writeValue(value: BufferSource) -> JSPromise {
        let this = jsObject
        return this[Strings.writeValue].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func writeValue(value: BufferSource) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.writeValue].function!(this: this, arguments: [value.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }
}
