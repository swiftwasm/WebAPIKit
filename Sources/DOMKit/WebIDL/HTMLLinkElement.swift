// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLLinkElement: HTMLElement, LinkStyle {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.HTMLLinkElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _href = ReadWriteAttribute(jsObject: jsObject, name: Strings.href)
        _crossOrigin = ReadWriteAttribute(jsObject: jsObject, name: Strings.crossOrigin)
        _rel = ReadWriteAttribute(jsObject: jsObject, name: Strings.rel)
        _as = ReadWriteAttribute(jsObject: jsObject, name: Strings.as)
        _relList = ReadonlyAttribute(jsObject: jsObject, name: Strings.relList)
        _media = ReadWriteAttribute(jsObject: jsObject, name: Strings.media)
        _integrity = ReadWriteAttribute(jsObject: jsObject, name: Strings.integrity)
        _hreflang = ReadWriteAttribute(jsObject: jsObject, name: Strings.hreflang)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        _sizes = ReadonlyAttribute(jsObject: jsObject, name: Strings.sizes)
        _imageSrcset = ReadWriteAttribute(jsObject: jsObject, name: Strings.imageSrcset)
        _imageSizes = ReadWriteAttribute(jsObject: jsObject, name: Strings.imageSizes)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Strings.referrerPolicy)
        _blocking = ReadonlyAttribute(jsObject: jsObject, name: Strings.blocking)
        _disabled = ReadWriteAttribute(jsObject: jsObject, name: Strings.disabled)
        _charset = ReadWriteAttribute(jsObject: jsObject, name: Strings.charset)
        _rev = ReadWriteAttribute(jsObject: jsObject, name: Strings.rev)
        _target = ReadWriteAttribute(jsObject: jsObject, name: Strings.target)
        _fetchpriority = ReadWriteAttribute(jsObject: jsObject, name: Strings.fetchpriority)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var href: String

    @ReadWriteAttribute
    public var crossOrigin: String?

    @ReadWriteAttribute
    public var rel: String

    @ReadWriteAttribute
    public var `as`: String

    @ReadonlyAttribute
    public var relList: DOMTokenList

    @ReadWriteAttribute
    public var media: String

    @ReadWriteAttribute
    public var integrity: String

    @ReadWriteAttribute
    public var hreflang: String

    @ReadWriteAttribute
    public var type: String

    @ReadonlyAttribute
    public var sizes: DOMTokenList

    @ReadWriteAttribute
    public var imageSrcset: String

    @ReadWriteAttribute
    public var imageSizes: String

    @ReadWriteAttribute
    public var referrerPolicy: String

    @ReadonlyAttribute
    public var blocking: DOMTokenList

    @ReadWriteAttribute
    public var disabled: Bool

    @ReadWriteAttribute
    public var charset: String

    @ReadWriteAttribute
    public var rev: String

    @ReadWriteAttribute
    public var target: String

    @ReadWriteAttribute
    public var fetchpriority: String
}
