// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRSubImage: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.XRSubImage].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _viewport = ReadonlyAttribute(jsObject: jsObject, name: Strings.viewport)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var viewport: XRViewport
}
