// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTemplateElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLTemplateElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _content = ReadonlyAttribute(jsObject: jsObject, name: "content")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadonlyAttribute
    public var content: DocumentFragment
}
