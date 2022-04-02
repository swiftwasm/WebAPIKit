// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRViewport: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XRViewport].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadonlyAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadonlyAttribute(jsObject: jsObject, name: Strings.y)
        _width = ReadonlyAttribute(jsObject: jsObject, name: Strings.width)
        _height = ReadonlyAttribute(jsObject: jsObject, name: Strings.height)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var x: Int32

    @ReadonlyAttribute
    public var y: Int32

    @ReadonlyAttribute
    public var width: Int32

    @ReadonlyAttribute
    public var height: Int32
}
