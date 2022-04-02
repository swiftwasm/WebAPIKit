// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLHeadingElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLHeadingElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _align = ReadWriteAttribute(jsObject: jsObject, name: Strings.align)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var align: String
}
