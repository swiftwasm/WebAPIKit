// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLQuoteElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLQuoteElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _cite = ReadWriteAttribute(jsObject: jsObject, name: Strings.cite)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var cite: String
}
