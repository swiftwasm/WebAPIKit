// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGAnimatedString: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.SVGAnimatedString].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _baseVal = ReadWriteAttribute(jsObject: jsObject, name: Strings.baseVal)
        _animVal = ReadonlyAttribute(jsObject: jsObject, name: Strings.animVal)
        self.jsObject = jsObject
    }

    @ReadWriteAttribute
    public var baseVal: String

    @ReadonlyAttribute
    public var animVal: String
}