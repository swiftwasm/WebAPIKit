// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLQuoteElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLQuoteElement.function! }

    private enum Keys {
        static let cite: JSString = "cite"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _cite = ReadWriteAttribute(jsObject: jsObject, name: Keys.cite)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var cite: String
}
