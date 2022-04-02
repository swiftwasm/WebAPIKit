// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSPerspective: CSSTransformComponent {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CSSPerspective].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadWriteAttribute(jsObject: jsObject, name: Strings.length)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(length: CSSPerspectiveValue) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [length.jsValue()]))
    }

    @ReadWriteAttribute
    public var length: CSSPerspectiveValue
}
