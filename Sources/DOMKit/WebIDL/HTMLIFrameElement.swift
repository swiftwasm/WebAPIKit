// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLIFrameElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLIFrameElement.function! }

    private enum Keys {
        static let align: JSString = "align"
        static let allow: JSString = "allow"
        static let allowFullscreen: JSString = "allowFullscreen"
        static let contentDocument: JSString = "contentDocument"
        static let contentWindow: JSString = "contentWindow"
        static let frameBorder: JSString = "frameBorder"
        static let getSVGDocument: JSString = "getSVGDocument"
        static let height: JSString = "height"
        static let loading: JSString = "loading"
        static let longDesc: JSString = "longDesc"
        static let marginHeight: JSString = "marginHeight"
        static let marginWidth: JSString = "marginWidth"
        static let name: JSString = "name"
        static let referrerPolicy: JSString = "referrerPolicy"
        static let sandbox: JSString = "sandbox"
        static let scrolling: JSString = "scrolling"
        static let src: JSString = "src"
        static let srcdoc: JSString = "srcdoc"
        static let width: JSString = "width"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _src = ReadWriteAttribute(jsObject: jsObject, name: Keys.src)
        _srcdoc = ReadWriteAttribute(jsObject: jsObject, name: Keys.srcdoc)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _sandbox = ReadonlyAttribute(jsObject: jsObject, name: Keys.sandbox)
        _allow = ReadWriteAttribute(jsObject: jsObject, name: Keys.allow)
        _allowFullscreen = ReadWriteAttribute(jsObject: jsObject, name: Keys.allowFullscreen)
        _width = ReadWriteAttribute(jsObject: jsObject, name: Keys.width)
        _height = ReadWriteAttribute(jsObject: jsObject, name: Keys.height)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Keys.referrerPolicy)
        _loading = ReadWriteAttribute(jsObject: jsObject, name: Keys.loading)
        _contentDocument = ReadonlyAttribute(jsObject: jsObject, name: Keys.contentDocument)
        _contentWindow = ReadonlyAttribute(jsObject: jsObject, name: Keys.contentWindow)
        _align = ReadWriteAttribute(jsObject: jsObject, name: Keys.align)
        _scrolling = ReadWriteAttribute(jsObject: jsObject, name: Keys.scrolling)
        _frameBorder = ReadWriteAttribute(jsObject: jsObject, name: Keys.frameBorder)
        _longDesc = ReadWriteAttribute(jsObject: jsObject, name: Keys.longDesc)
        _marginHeight = ReadWriteAttribute(jsObject: jsObject, name: Keys.marginHeight)
        _marginWidth = ReadWriteAttribute(jsObject: jsObject, name: Keys.marginWidth)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var src: String

    @ReadWriteAttribute
    public var srcdoc: String

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var sandbox: DOMTokenList

    @ReadWriteAttribute
    public var allow: String

    @ReadWriteAttribute
    public var allowFullscreen: Bool

    @ReadWriteAttribute
    public var width: String

    @ReadWriteAttribute
    public var height: String

    @ReadWriteAttribute
    public var referrerPolicy: String

    @ReadWriteAttribute
    public var loading: String

    @ReadonlyAttribute
    public var contentDocument: Document?

    @ReadonlyAttribute
    public var contentWindow: WindowProxy?

    public func getSVGDocument() -> Document? {
        jsObject[Keys.getSVGDocument]!().fromJSValue()!
    }

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var scrolling: String

    @ReadWriteAttribute
    public var frameBorder: String

    @ReadWriteAttribute
    public var longDesc: String

    @ReadWriteAttribute
    public var marginHeight: String

    @ReadWriteAttribute
    public var marginWidth: String
}
