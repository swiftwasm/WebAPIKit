// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGAElement: SVGGraphicsElement, SVGURIReference {
    override public class var constructor: JSFunction { JSObject.global[Strings.SVGAElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _target = ReadonlyAttribute(jsObject: jsObject, name: Strings.target)
        _download = ReadWriteAttribute(jsObject: jsObject, name: Strings.download)
        _ping = ReadWriteAttribute(jsObject: jsObject, name: Strings.ping)
        _rel = ReadWriteAttribute(jsObject: jsObject, name: Strings.rel)
        _relList = ReadonlyAttribute(jsObject: jsObject, name: Strings.relList)
        _hreflang = ReadWriteAttribute(jsObject: jsObject, name: Strings.hreflang)
        _type = ReadWriteAttribute(jsObject: jsObject, name: Strings.type)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Strings.text)
        _referrerPolicy = ReadWriteAttribute(jsObject: jsObject, name: Strings.referrerPolicy)
        _origin = ReadonlyAttribute(jsObject: jsObject, name: Strings.origin)
        _protocol = ReadWriteAttribute(jsObject: jsObject, name: Strings.protocol)
        _username = ReadWriteAttribute(jsObject: jsObject, name: Strings.username)
        _password = ReadWriteAttribute(jsObject: jsObject, name: Strings.password)
        _host = ReadWriteAttribute(jsObject: jsObject, name: Strings.host)
        _hostname = ReadWriteAttribute(jsObject: jsObject, name: Strings.hostname)
        _port = ReadWriteAttribute(jsObject: jsObject, name: Strings.port)
        _pathname = ReadWriteAttribute(jsObject: jsObject, name: Strings.pathname)
        _search = ReadWriteAttribute(jsObject: jsObject, name: Strings.search)
        _hash = ReadWriteAttribute(jsObject: jsObject, name: Strings.hash)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var target: SVGAnimatedString

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

    @ReadonlyAttribute
    public var origin: String

    @ReadWriteAttribute
    public var `protocol`: String

    @ReadWriteAttribute
    public var username: String

    @ReadWriteAttribute
    public var password: String

    @ReadWriteAttribute
    public var host: String

    @ReadWriteAttribute
    public var hostname: String

    @ReadWriteAttribute
    public var port: String

    @ReadWriteAttribute
    public var pathname: String

    @ReadWriteAttribute
    public var search: String

    @ReadWriteAttribute
    public var hash: String
}