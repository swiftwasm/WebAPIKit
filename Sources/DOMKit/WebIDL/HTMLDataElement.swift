// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLDataElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLDataElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var value: String
}
