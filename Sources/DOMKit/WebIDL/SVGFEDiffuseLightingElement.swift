// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGFEDiffuseLightingElement: SVGElement, SVGFilterPrimitiveStandardAttributes {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGFEDiffuseLightingElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _in1 = ReadonlyAttribute(jsObject: jsObject, name: Strings.in1)
        _surfaceScale = ReadonlyAttribute(jsObject: jsObject, name: Strings.surfaceScale)
        _diffuseConstant = ReadonlyAttribute(jsObject: jsObject, name: Strings.diffuseConstant)
        _kernelUnitLengthX = ReadonlyAttribute(jsObject: jsObject, name: Strings.kernelUnitLengthX)
        _kernelUnitLengthY = ReadonlyAttribute(jsObject: jsObject, name: Strings.kernelUnitLengthY)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var in1: SVGAnimatedString

    @ReadonlyAttribute
    public var surfaceScale: SVGAnimatedNumber

    @ReadonlyAttribute
    public var diffuseConstant: SVGAnimatedNumber

    @ReadonlyAttribute
    public var kernelUnitLengthX: SVGAnimatedNumber

    @ReadonlyAttribute
    public var kernelUnitLengthY: SVGAnimatedNumber
}
