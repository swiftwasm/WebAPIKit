// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLBodyElement: HTMLElement, WindowEventHandlers {
    override public class var constructor: JSFunction { JSObject.global.HTMLBodyElement.function! }

    private enum Keys {
        static let background: JSString = "background"
        static let bgColor: JSString = "bgColor"
        static let link: JSString = "link"
        static let aLink: JSString = "aLink"
        static let text: JSString = "text"
        static let vLink: JSString = "vLink"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _text = ReadWriteAttribute(jsObject: jsObject, name: Keys.text)
        _link = ReadWriteAttribute(jsObject: jsObject, name: Keys.link)
        _vLink = ReadWriteAttribute(jsObject: jsObject, name: Keys.vLink)
        _aLink = ReadWriteAttribute(jsObject: jsObject, name: Keys.aLink)
        _bgColor = ReadWriteAttribute(jsObject: jsObject, name: Keys.bgColor)
        _background = ReadWriteAttribute(jsObject: jsObject, name: Keys.background)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var text: String

    @ReadWriteAttribute
    public var link: String

    @ReadWriteAttribute
    public var vLink: String

    @ReadWriteAttribute
    public var aLink: String

    @ReadWriteAttribute
    public var bgColor: String

    @ReadWriteAttribute
    public var background: String
}
