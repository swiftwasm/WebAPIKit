// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLAreaElement: HTMLElement, HTMLHyperlinkElementUtils {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLAreaElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _alt = ReadWriteAttribute(jsObject: jsObject, name: Strings.alt)
        _coords = ReadWriteAttribute(jsObject: jsObject, name: Strings.coords)
        _shape = ReadWriteAttribute(jsObject: jsObject, name: Strings.shape)
        _target = ReadWriteAttribute(jsObject: jsObject, name: Strings.target)
        _download = ReadWriteAttribute(jsObject: jsObject, name: Strings.download)
        _ping = ReadWriteAttribute(jsObject: jsObject, name: Strings.ping)
        _rel = ReadWriteAttribute(jsObject: jsObject, name: Strings.rel)
        _relList = ReadonlyAttribute(jsObject: jsObject, name: Strings.relList)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Strings.referrerPolicy)
        _noHref = ReadWriteAttribute(jsObject: jsObject, name: Strings.noHref)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var alt: String

    @ReadWriteAttribute
    public var coords: String

    @ReadWriteAttribute
    public var shape: String

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
    public var referrerPolicy: String

    @ReadWriteAttribute
    public var noHref: Bool
}
