// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLScriptElement: HTMLElement {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.HTMLScriptElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _src = ReadWriteAttribute(jsObject: jsObject, name: Strings.src)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        _noModule = ReadWriteAttribute(jsObject: jsObject, name: Strings.noModule)
        _async = ReadWriteAttribute(jsObject: jsObject, name: Strings.async)
        _defer = ReadWriteAttribute(jsObject: jsObject, name: Strings.defer)
        _crossOrigin = ReadWriteAttribute(jsObject: jsObject, name: Strings.crossOrigin)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Strings.text)
        _integrity = ReadWriteAttribute(jsObject: jsObject, name: Strings.integrity)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Strings.referrerPolicy)
        _blocking = ReadonlyAttribute(jsObject: jsObject, name: Strings.blocking)
        _charset = ReadWriteAttribute(jsObject: jsObject, name: Strings.charset)
        _event = ReadWriteAttribute(jsObject: jsObject, name: Strings.event)
        _htmlFor = ReadWriteAttribute(jsObject: jsObject, name: Strings.htmlFor)
        _fetchpriority = ReadWriteAttribute(jsObject: jsObject, name: Strings.fetchpriority)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
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

    @inlinable public static func supports(type: String) -> Bool {
        let this = constructor
        return this[Strings.supports].function!(this: this, arguments: [type.jsValue()]).fromJSValue()!
    }

    @ReadWriteAttribute
    public var charset: String

    @ReadWriteAttribute
    public var event: String

    @ReadWriteAttribute
    public var htmlFor: String

    @ReadWriteAttribute
    public var fetchpriority: String
}
