// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUExternalTexture: JSBridgedClass, GPUObjectBase {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.GPUExternalTexture].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _expired = ReadonlyAttribute(jsObject: jsObject, name: Strings.expired)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var expired: Bool
}
