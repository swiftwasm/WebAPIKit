// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSPseudoElement: EventTarget, GeometryUtils {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CSSPseudoElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _element = ReadonlyAttribute(jsObject: jsObject, name: Strings.element)
        _parent = ReadonlyAttribute(jsObject: jsObject, name: Strings.parent)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var type: String

    @ReadonlyAttribute
    public var element: Element

    @ReadonlyAttribute
    public var parent: CSSPseudoElement_or_Element

    @inlinable public func pseudo(type: String) -> CSSPseudoElement? {
        let this = jsObject
        return this[Strings.pseudo].function!(this: this, arguments: [type.jsValue()]).fromJSValue()!
    }
}
