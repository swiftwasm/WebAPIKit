// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSSkewX: CSSTransformComponent {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSSSkewX].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ax = ReadWriteAttribute(jsObject: jsObject, name: Strings.ax)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(ax: CSSNumericValue) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [ax.jsValue()]))
    }

    @ReadWriteAttribute
    public var ax: CSSNumericValue
}
