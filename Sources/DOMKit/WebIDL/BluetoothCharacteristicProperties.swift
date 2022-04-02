// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BluetoothCharacteristicProperties: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.BluetoothCharacteristicProperties].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _broadcast = ReadonlyAttribute(jsObject: jsObject, name: Strings.broadcast)
        _read = ReadonlyAttribute(jsObject: jsObject, name: Strings.read)
        _writeWithoutResponse = ReadonlyAttribute(jsObject: jsObject, name: Strings.writeWithoutResponse)
        _write = ReadonlyAttribute(jsObject: jsObject, name: Strings.write)
        _notify = ReadonlyAttribute(jsObject: jsObject, name: Strings.notify)
        _indicate = ReadonlyAttribute(jsObject: jsObject, name: Strings.indicate)
        _authenticatedSignedWrites = ReadonlyAttribute(jsObject: jsObject, name: Strings.authenticatedSignedWrites)
        _reliableWrite = ReadonlyAttribute(jsObject: jsObject, name: Strings.reliableWrite)
        _writableAuxiliaries = ReadonlyAttribute(jsObject: jsObject, name: Strings.writableAuxiliaries)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var broadcast: Bool

    @ReadonlyAttribute
    public var read: Bool

    @ReadonlyAttribute
    public var writeWithoutResponse: Bool

    @ReadonlyAttribute
    public var write: Bool

    @ReadonlyAttribute
    public var notify: Bool

    @ReadonlyAttribute
    public var indicate: Bool

    @ReadonlyAttribute
    public var authenticatedSignedWrites: Bool

    @ReadonlyAttribute
    public var reliableWrite: Bool

    @ReadonlyAttribute
    public var writableAuxiliaries: Bool
}
