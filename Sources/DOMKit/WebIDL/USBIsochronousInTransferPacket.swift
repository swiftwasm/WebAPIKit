// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USBIsochronousInTransferPacket: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.USBIsochronousInTransferPacket].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadonlyAttribute(jsObject: jsObject, name: Strings.data)
        _status = ReadonlyAttribute(jsObject: jsObject, name: Strings.status)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(status: USBTransferStatus, data: DataView? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [status.jsValue, data?.jsValue ?? .undefined]))
    }

    @ReadonlyAttribute
    public var data: DataView?

    @ReadonlyAttribute
    public var status: USBTransferStatus
}
