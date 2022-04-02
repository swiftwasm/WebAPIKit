// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGFEGaussianBlurElement: SVGElement, SVGFilterPrimitiveStandardAttributes {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGFEGaussianBlurElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _in1 = ReadonlyAttribute(jsObject: jsObject, name: Strings.in1)
        _stdDeviationX = ReadonlyAttribute(jsObject: jsObject, name: Strings.stdDeviationX)
        _stdDeviationY = ReadonlyAttribute(jsObject: jsObject, name: Strings.stdDeviationY)
        _edgeMode = ReadonlyAttribute(jsObject: jsObject, name: Strings.edgeMode)
        super.init(unsafelyWrapping: jsObject)
    }

    public static let SVG_EDGEMODE_UNKNOWN: UInt16 = 0

    public static let SVG_EDGEMODE_DUPLICATE: UInt16 = 1

    public static let SVG_EDGEMODE_WRAP: UInt16 = 2

    public static let SVG_EDGEMODE_NONE: UInt16 = 3

    @ReadonlyAttribute
    public var in1: SVGAnimatedString

    @ReadonlyAttribute
    public var stdDeviationX: SVGAnimatedNumber

    @ReadonlyAttribute
    public var stdDeviationY: SVGAnimatedNumber

    @ReadonlyAttribute
    public var edgeMode: SVGAnimatedEnumeration

    @inlinable public func setStdDeviation(stdDeviationX: Float, stdDeviationY: Float) {
        let this = jsObject
        _ = this[Strings.setStdDeviation].function!(this: this, arguments: [stdDeviationX.jsValue(), stdDeviationY.jsValue()])
    }
}
