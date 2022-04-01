// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLFrameElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLFrameElement.function! }

    private enum Keys {
        static let contentWindow: JSString = "contentWindow"
        static let src: JSString = "src"
        static let name: JSString = "name"
        static let scrolling: JSString = "scrolling"
        static let frameBorder: JSString = "frameBorder"
        static let marginHeight: JSString = "marginHeight"
        static let longDesc: JSString = "longDesc"
        static let marginWidth: JSString = "marginWidth"
        static let noResize: JSString = "noResize"
        static let contentDocument: JSString = "contentDocument"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _scrolling = ReadWriteAttribute(jsObject: jsObject, name: Keys.scrolling)
        _src = ReadWriteAttribute(jsObject: jsObject, name: Keys.src)
        _frameBorder = ReadWriteAttribute(jsObject: jsObject, name: Keys.frameBorder)
        _longDesc = ReadWriteAttribute(jsObject: jsObject, name: Keys.longDesc)
        _noResize = ReadWriteAttribute(jsObject: jsObject, name: Keys.noResize)
        _contentDocument = ReadonlyAttribute(jsObject: jsObject, name: Keys.contentDocument)
        _contentWindow = ReadonlyAttribute(jsObject: jsObject, name: Keys.contentWindow)
        _marginHeight = ReadWriteAttribute(jsObject: jsObject, name: Keys.marginHeight)
        _marginWidth = ReadWriteAttribute(jsObject: jsObject, name: Keys.marginWidth)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var scrolling: String

    @ReadWriteAttribute
    public var src: String

    @ReadWriteAttribute
    public var frameBorder: String

    @ReadWriteAttribute
    public var longDesc: String

    @ReadWriteAttribute
    public var noResize: Bool

    @ReadonlyAttribute
    public var contentDocument: Document?

    @ReadonlyAttribute
    public var contentWindow: WindowProxy?

    @ReadWriteAttribute
    public var marginHeight: String

    @ReadWriteAttribute
    public var marginWidth: String
}
