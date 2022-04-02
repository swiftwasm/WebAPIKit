// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BluetoothRemoteGATTDescriptor: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.BluetoothRemoteGATTDescriptor].function! }

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

    public func readValue() -> JSPromise {
        jsObject[Strings.readValue]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func readValue() async throws -> DataView {
        let _promise: JSPromise = jsObject[Strings.readValue]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func writeValue(value: BufferSource) -> JSPromise {
        jsObject[Strings.writeValue]!(value.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func writeValue(value: BufferSource) async throws {
        let _promise: JSPromise = jsObject[Strings.writeValue]!(value.jsValue()).fromJSValue()!
        _ = try await _promise.get()
    }
}
