// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSSkew: CSSTransformComponent {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CSSSkew].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ax = ReadWriteAttribute(jsObject: jsObject, name: Strings.ax)
        _ay = ReadWriteAttribute(jsObject: jsObject, name: Strings.ay)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(ax: CSSNumericValue, ay: CSSNumericValue) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [ax.jsValue(), ay.jsValue()]))
    }

    @ReadWriteAttribute
    public var ax: CSSNumericValue

    @ReadWriteAttribute
    public var ay: CSSNumericValue
}
