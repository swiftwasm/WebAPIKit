// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLAnchorElement: HTMLElement, HTMLHyperlinkElementUtils {
    override public class var constructor: JSFunction { JSObject.global.HTMLAnchorElement.function! }

    private enum Keys {
        static let charset: JSString = "charset"
        static let coords: JSString = "coords"
        static let download: JSString = "download"
        static let hreflang: JSString = "hreflang"
        static let name: JSString = "name"
        static let ping: JSString = "ping"
        static let referrerPolicy: JSString = "referrerPolicy"
        static let rel: JSString = "rel"
        static let relList: JSString = "relList"
        static let rev: JSString = "rev"
        static let shape: JSString = "shape"
        static let target: JSString = "target"
        static let text: JSString = "text"
        static let type: JSString = "type"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _target = ReadWriteAttribute(jsObject: jsObject, name: Keys.target)
        _download = ReadWriteAttribute(jsObject: jsObject, name: Keys.download)
        _ping = ReadWriteAttribute(jsObject: jsObject, name: Keys.ping)
        _rel = ReadWriteAttribute(jsObject: jsObject, name: Keys.rel)
        _relList = ReadonlyAttribute(jsObject: jsObject, name: Keys.relList)
        _hreflang = ReadWriteAttribute(jsObject: jsObject, name: Keys.hreflang)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Keys.type)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Keys.text)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Keys.referrerPolicy)
        _coords = ReadWriteAttribute(jsObject: jsObject, name: Keys.coords)
        _charset = ReadWriteAttribute(jsObject: jsObject, name: Keys.charset)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _rev = ReadWriteAttribute(jsObject: jsObject, name: Keys.rev)
        _shape = ReadWriteAttribute(jsObject: jsObject, name: Keys.shape)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var target: String

    @ReadWriteAttribute
    public var download: String

    @ReadWriteAttribute
    public var ping: String

    @ReadWriteAttribute
    public var rel: String

    @ReadonlyAttribute
    public var relList: DOMTokenList

    @ReadWriteAttribute
    public var hreflang: String

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var text: String

    @ReadWriteAttribute
    public var referrerPolicy: String

    @ReadWriteAttribute
    public var coords: String

    @ReadWriteAttribute
    public var charset: String

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var rev: String

    @ReadWriteAttribute
    public var shape: String
}
