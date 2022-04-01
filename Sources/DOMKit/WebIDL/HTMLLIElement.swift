// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLLIElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLLIElement.function! }

    private enum Keys {
        static let type: JSString = "type"
        static let value: JSString = "value"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: Keys.value)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Keys.type)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var value: Int32

    @ReadWriteAttribute
    public var type: String
}
