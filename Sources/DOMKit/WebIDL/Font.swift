// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Font: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Font].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _glyphsRendered = ReadonlyAttribute(jsObject: jsObject, name: Strings.glyphsRendered)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var glyphsRendered: UInt32
}