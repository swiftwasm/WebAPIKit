// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGEllipseElement: SVGGeometryElement {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGEllipseElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _cx = ReadonlyAttribute(jsObject: jsObject, name: Strings.cx)
        _cy = ReadonlyAttribute(jsObject: jsObject, name: Strings.cy)
        _rx = ReadonlyAttribute(jsObject: jsObject, name: Strings.rx)
        _ry = ReadonlyAttribute(jsObject: jsObject, name: Strings.ry)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var cx: SVGAnimatedLength

    @ReadonlyAttribute
    public var cy: SVGAnimatedLength

    @ReadonlyAttribute
    public var rx: SVGAnimatedLength

    @ReadonlyAttribute
    public var ry: SVGAnimatedLength
}
