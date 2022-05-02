// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WebGLShaderPrecisionFormat: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.WebGLShaderPrecisionFormat].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _rangeMin = ReadonlyAttribute(jsObject: jsObject, name: Strings.rangeMin)
        _rangeMax = ReadonlyAttribute(jsObject: jsObject, name: Strings.rangeMax)
        _precision = ReadonlyAttribute(jsObject: jsObject, name: Strings.precision)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var rangeMin: GLint

    @ReadonlyAttribute
    public var rangeMax: GLint

    @ReadonlyAttribute
    public var precision: GLint
}
