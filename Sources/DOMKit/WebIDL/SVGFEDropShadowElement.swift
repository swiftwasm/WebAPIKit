// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGFEDropShadowElement: SVGElement, SVGFilterPrimitiveStandardAttributes {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGFEDropShadowElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _in1 = ReadonlyAttribute(jsObject: jsObject, name: Strings.in1)
        _dx = ReadonlyAttribute(jsObject: jsObject, name: Strings.dx)
        _dy = ReadonlyAttribute(jsObject: jsObject, name: Strings.dy)
        _stdDeviationX = ReadonlyAttribute(jsObject: jsObject, name: Strings.stdDeviationX)
        _stdDeviationY = ReadonlyAttribute(jsObject: jsObject, name: Strings.stdDeviationY)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var in1: SVGAnimatedString

    @ReadonlyAttribute
    public var dx: SVGAnimatedNumber

    @ReadonlyAttribute
    public var dy: SVGAnimatedNumber

    @ReadonlyAttribute
    public var stdDeviationX: SVGAnimatedNumber

    @ReadonlyAttribute
    public var stdDeviationY: SVGAnimatedNumber

    @inlinable public func setStdDeviation(stdDeviationX: Float, stdDeviationY: Float) {
        let this = jsObject
        _ = this[Strings.setStdDeviation].function!(this: this, arguments: [stdDeviationX.jsValue, stdDeviationY.jsValue])
    }
}
