// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGFEImageElement: SVGElement, SVGFilterPrimitiveStandardAttributes, SVGURIReference {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGFEImageElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _preserveAspectRatio = ReadonlyAttribute(jsObject: jsObject, name: Strings.preserveAspectRatio)
        _crossOrigin = ReadonlyAttribute(jsObject: jsObject, name: Strings.crossOrigin)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var preserveAspectRatio: SVGAnimatedPreserveAspectRatio

    @ReadonlyAttribute
    public var crossOrigin: SVGAnimatedString
}