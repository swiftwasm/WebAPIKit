// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Request: JSBridgedClass, Body {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.Request].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _method = ReadonlyAttribute(jsObject: jsObject, name: Strings.method)
        _url = ReadonlyAttribute(jsObject: jsObject, name: Strings.url)
        _headers = ReadonlyAttribute(jsObject: jsObject, name: Strings.headers)
        _destination = ReadonlyAttribute(jsObject: jsObject, name: Strings.destination)
        _referrer = ReadonlyAttribute(jsObject: jsObject, name: Strings.referrer)
        _referrerPolicy = ReadonlyAttribute(jsObject: jsObject, name: Strings.referrerPolicy)
        _mode = ReadonlyAttribute(jsObject: jsObject, name: Strings.mode)
        _credentials = ReadonlyAttribute(jsObject: jsObject, name: Strings.credentials)
        _cache = ReadonlyAttribute(jsObject: jsObject, name: Strings.cache)
        _redirect = ReadonlyAttribute(jsObject: jsObject, name: Strings.redirect)
        _integrity = ReadonlyAttribute(jsObject: jsObject, name: Strings.integrity)
        _keepalive = ReadonlyAttribute(jsObject: jsObject, name: Strings.keepalive)
        _isReloadNavigation = ReadonlyAttribute(jsObject: jsObject, name: Strings.isReloadNavigation)
        _isHistoryNavigation = ReadonlyAttribute(jsObject: jsObject, name: Strings.isHistoryNavigation)
        _signal = ReadonlyAttribute(jsObject: jsObject, name: Strings.signal)
        _priority = ReadonlyAttribute(jsObject: jsObject, name: Strings.priority)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(input: RequestInfo, init: RequestInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [input.jsValue(), `init`?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var method: String

    @ReadonlyAttribute
    public var url: String

    @ReadonlyAttribute
    public var headers: Headers

    @ReadonlyAttribute
    public var destination: RequestDestination

    @ReadonlyAttribute
    public var referrer: String

    @ReadonlyAttribute
    public var referrerPolicy: ReferrerPolicy

    @ReadonlyAttribute
    public var mode: RequestMode

    @ReadonlyAttribute
    public var credentials: RequestCredentials

    @ReadonlyAttribute
    public var cache: RequestCache

    @ReadonlyAttribute
    public var redirect: RequestRedirect

    @ReadonlyAttribute
    public var integrity: String

    @ReadonlyAttribute
    public var keepalive: Bool

    @ReadonlyAttribute
    public var isReloadNavigation: Bool

    @ReadonlyAttribute
    public var isHistoryNavigation: Bool

    @ReadonlyAttribute
    public var signal: AbortSignal

    @inlinable public func clone() -> Self {
        let this = jsObject
        return this[Strings.clone].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadonlyAttribute
    public var priority: FetchPriority
}
