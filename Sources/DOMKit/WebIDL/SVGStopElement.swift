// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGStopElement: SVGElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGStopElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _offset = ReadonlyAttribute(jsObject: jsObject, name: Strings.offset)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var offset: SVGAnimatedNumber
}
