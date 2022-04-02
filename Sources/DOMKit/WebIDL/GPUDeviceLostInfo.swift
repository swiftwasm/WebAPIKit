// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUDeviceLostInfo: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.GPUDeviceLostInfo].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _reason = ReadonlyAttribute(jsObject: jsObject, name: Strings.reason)
        _message = ReadonlyAttribute(jsObject: jsObject, name: Strings.message)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var reason: GPUDeviceLostReason_or_Void

    @ReadonlyAttribute
    public var message: String
}
