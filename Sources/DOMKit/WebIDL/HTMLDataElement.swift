// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLDataElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLDataElement.function! }

    private enum Keys {
        static let value: JSString = "value"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: Keys.value)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var value: String
}