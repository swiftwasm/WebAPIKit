// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGFEColorMatrixElement: SVGElement, SVGFilterPrimitiveStandardAttributes {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGFEColorMatrixElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _in1 = ReadonlyAttribute(jsObject: jsObject, name: Strings.in1)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _values = ReadonlyAttribute(jsObject: jsObject, name: Strings.values)
        super.init(unsafelyWrapping: jsObject)
    }

    public static let SVG_FECOLORMATRIX_TYPE_UNKNOWN: UInt16 = 0

    public static let SVG_FECOLORMATRIX_TYPE_MATRIX: UInt16 = 1

    public static let SVG_FECOLORMATRIX_TYPE_SATURATE: UInt16 = 2

    public static let SVG_FECOLORMATRIX_TYPE_HUEROTATE: UInt16 = 3

    public static let SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA: UInt16 = 4

    @ReadonlyAttribute
    public var in1: SVGAnimatedString

    @ReadonlyAttribute
    public var type: SVGAnimatedEnumeration

    @ReadonlyAttribute
    public var values: SVGAnimatedNumberList
}
