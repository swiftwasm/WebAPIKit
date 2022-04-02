// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGRadialGradientElement: SVGGradientElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGRadialGradientElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _cx = ReadonlyAttribute(jsObject: jsObject, name: Strings.cx)
        _cy = ReadonlyAttribute(jsObject: jsObject, name: Strings.cy)
        _r = ReadonlyAttribute(jsObject: jsObject, name: Strings.r)
        _fx = ReadonlyAttribute(jsObject: jsObject, name: Strings.fx)
        _fy = ReadonlyAttribute(jsObject: jsObject, name: Strings.fy)
        _fr = ReadonlyAttribute(jsObject: jsObject, name: Strings.fr)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var cx: SVGAnimatedLength

    @ReadonlyAttribute
    public var cy: SVGAnimatedLength

    @ReadonlyAttribute
    public var r: SVGAnimatedLength

    @ReadonlyAttribute
    public var fx: SVGAnimatedLength

    @ReadonlyAttribute
    public var fy: SVGAnimatedLength

    @ReadonlyAttribute
    public var fr: SVGAnimatedLength
}
