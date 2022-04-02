// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USBOutTransferResult: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.USBOutTransferResult].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _bytesWritten = ReadonlyAttribute(jsObject: jsObject, name: Strings.bytesWritten)
        _status = ReadonlyAttribute(jsObject: jsObject, name: Strings.status)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(status: USBTransferStatus, bytesWritten: UInt32? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [status.jsValue(), bytesWritten?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var bytesWritten: UInt32

    @ReadonlyAttribute
    public var status: USBTransferStatus
}
