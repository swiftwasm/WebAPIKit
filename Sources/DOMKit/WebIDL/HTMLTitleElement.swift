// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTitleElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLTitleElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _text = ReadWriteAttribute(jsObject: jsObject, name: "text")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var text: String
}
