// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGScriptElement: SVGElement, SVGURIReference {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.SVGScriptElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        _crossOrigin = ReadWriteAttribute(jsObject: jsObject, name: Strings.crossOrigin)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var crossOrigin: String?
}
