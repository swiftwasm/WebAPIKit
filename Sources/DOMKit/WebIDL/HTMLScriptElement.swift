// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLScriptElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLScriptElement.function! }

    private enum Keys {
        static let async: JSString = "async"
        static let blocking: JSString = "blocking"
        static let charset: JSString = "charset"
        static let crossOrigin: JSString = "crossOrigin"
        static let `defer`: JSString = "defer"
        static let event: JSString = "event"
        static let htmlFor: JSString = "htmlFor"
        static let integrity: JSString = "integrity"
        static let noModule: JSString = "noModule"
        static let referrerPolicy: JSString = "referrerPolicy"
        static let src: JSString = "src"
        static let supports: JSString = "supports"
        static let text: JSString = "text"
        static let type: JSString = "type"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _src = ReadWriteAttribute(jsObject: jsObject, name: Keys.src)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Keys.type)
        _noModule = ReadWriteAttribute(jsObject: jsObject, name: Keys.noModule)
        _async = ReadWriteAttribute(jsObject: jsObject, name: Keys.async)
        _defer = ReadWriteAttribute(jsObject: jsObject, name: Keys.defer)
        _crossOrigin = ReadWriteAttribute(jsObject: jsObject, name: Keys.crossOrigin)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Keys.text)
        _integrity = ReadWriteAttribute(jsObject: jsObject, name: Keys.integrity)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Keys.referrerPolicy)
        _blocking = ReadonlyAttribute(jsObject: jsObject, name: Keys.blocking)
        _charset = ReadWriteAttribute(jsObject: jsObject, name: Keys.charset)
        _event = ReadWriteAttribute(jsObject: jsObject, name: Keys.event)
        _htmlFor = ReadWriteAttribute(jsObject: jsObject, name: Keys.htmlFor)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var src: String

    @ReadWriteAttribute
    public var type: String

    @ReadWriteAttribute
    public var noModule: Bool

    @ReadWriteAttribute
    public var async: Bool

    @ReadWriteAttribute
    public var `defer`: Bool

    @ReadWriteAttribute
    public var crossOrigin: String?

    @ReadWriteAttribute
    public var text: String

    @ReadWriteAttribute
    public var integrity: String

    @ReadWriteAttribute
    public var referrerPolicy: String

    @ReadonlyAttribute
    public var blocking: DOMTokenList

    public static func supports(type: String) -> Bool {
        constructor[Keys.supports]!(type.jsValue()).fromJSValue()!
    }

    @ReadWriteAttribute
    public var charset: String

    @ReadWriteAttribute
    public var event: String

    @ReadWriteAttribute
    public var htmlFor: String
}