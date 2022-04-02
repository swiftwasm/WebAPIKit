// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGTextPositioningElement: SVGTextContentElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGTextPositioningElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadonlyAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadonlyAttribute(jsObject: jsObject, name: Strings.y)
        _dx = ReadonlyAttribute(jsObject: jsObject, name: Strings.dx)
        _dy = ReadonlyAttribute(jsObject: jsObject, name: Strings.dy)
        _rotate = ReadonlyAttribute(jsObject: jsObject, name: Strings.rotate)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var x: SVGAnimatedLengthList

    @ReadonlyAttribute
    public var y: SVGAnimatedLengthList

    @ReadonlyAttribute
    public var dx: SVGAnimatedLengthList

    @ReadonlyAttribute
    public var dy: SVGAnimatedLengthList

    @ReadonlyAttribute
    public var rotate: SVGAnimatedNumberList
}
