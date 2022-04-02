// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTemplateElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLTemplateElement.function! }

    private enum Keys {
        static let content: JSString = "content"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _content = ReadonlyAttribute(jsObject: jsObject, name: Keys.content)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadonlyAttribute
    public var content: DocumentFragment
}