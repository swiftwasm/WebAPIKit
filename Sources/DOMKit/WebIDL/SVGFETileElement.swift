// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGFETileElement: SVGElement, SVGFilterPrimitiveStandardAttributes {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGFETileElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _in1 = ReadonlyAttribute(jsObject: jsObject, name: Strings.in1)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var in1: SVGAnimatedString
}
