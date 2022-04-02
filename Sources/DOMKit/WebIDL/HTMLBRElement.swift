// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLBRElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLBRElement.function! }

    private enum Keys {
        static let clear: JSString = "clear"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _clear = ReadWriteAttribute(jsObject: jsObject, name: Keys.clear)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var clear: String
}