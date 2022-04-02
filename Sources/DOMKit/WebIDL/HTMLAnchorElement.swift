// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLAnchorElement: HTMLElement, HTMLHyperlinkElementUtils {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.HTMLAnchorElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _attributionDestination = ReadWriteAttribute(jsObject: jsObject, name: Strings.attributionDestination)
        _attributionSourceEventId = ReadWriteAttribute(jsObject: jsObject, name: Strings.attributionSourceEventId)
        _attributionReportTo = ReadWriteAttribute(jsObject: jsObject, name: Strings.attributionReportTo)
        _attributionExpiry = ReadWriteAttribute(jsObject: jsObject, name: Strings.attributionExpiry)
        _attributionSourcePriority = ReadWriteAttribute(jsObject: jsObject, name: Strings.attributionSourcePriority)
        _registerAttributionSource = ReadWriteAttribute(jsObject: jsObject, name: Strings.registerAttributionSource)
        _target = ReadWriteAttribute(jsObject: jsObject, name: Strings.target)
        _download = ReadWriteAttribute(jsObject: jsObject, name: Strings.download)
        _ping = ReadWriteAttribute(jsObject: jsObject, name: Strings.ping)
        _rel = ReadWriteAttribute(jsObject: jsObject, name: Strings.rel)
        _relList = ReadonlyAttribute(jsObject: jsObject, name: Strings.relList)
        _hreflang = ReadWriteAttribute(jsObject: jsObject, name: Strings.hreflang)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Strings.text)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Strings.referrerPolicy)
        _coords = ReadWriteAttribute(jsObject: jsObject, name: Strings.coords)
        _charset = ReadWriteAttribute(jsObject: jsObject, name: Strings.charset)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _rev = ReadWriteAttribute(jsObject: jsObject, name: Strings.rev)
        _shape = ReadWriteAttribute(jsObject: jsObject, name: Strings.shape)
        _attributionSourceId = ReadWriteAttribute(jsObject: jsObject, name: Strings.attributionSourceId)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var attributionDestination: String

    @ReadWriteAttribute
    public var attributionSourceEventId: String

    @ReadWriteAttribute
    public var attributionReportTo: String

    @ReadWriteAttribute
    public var attributionExpiry: Int64

    @ReadWriteAttribute
    public var attributionSourcePriority: Int64

    @ReadWriteAttribute
    public var registerAttributionSource: Bool

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
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

    @ReadWriteAttribute
    public var attributionSourceId: UInt32
}
