// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGAnimatedAngle: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.SVGAnimatedAngle].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _baseVal = ReadonlyAttribute(jsObject: jsObject, name: Strings.baseVal)
        _animVal = ReadonlyAttribute(jsObject: jsObject, name: Strings.animVal)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var baseVal: SVGAngle

    @ReadonlyAttribute
    public var animVal: SVGAngle
}
