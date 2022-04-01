// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Response: JSBridgedClass, Body {
    public class var constructor: JSFunction { JSObject.global.Response.function! }

    private enum Keys {
        static let clone: JSString = "clone"
        static let error: JSString = "error"
        static let headers: JSString = "headers"
        static let ok: JSString = "ok"
        static let redirect: JSString = "redirect"
        static let redirected: JSString = "redirected"
        static let status: JSString = "status"
        static let statusText: JSString = "statusText"
        static let type: JSString = "type"
        static let url: JSString = "url"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Keys.type)
        _url = ReadonlyAttribute(jsObject: jsObject, name: Keys.url)
        _redirected = ReadonlyAttribute(jsObject: jsObject, name: Keys.redirected)
        _status = ReadonlyAttribute(jsObject: jsObject, name: Keys.status)
        _ok = ReadonlyAttribute(jsObject: jsObject, name: Keys.ok)
        _statusText = ReadonlyAttribute(jsObject: jsObject, name: Keys.statusText)
        _headers = ReadonlyAttribute(jsObject: jsObject, name: Keys.headers)
        self.jsObject = jsObject
    }

    public convenience init(body: BodyInit? = nil, init: ResponseInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(body?.jsValue() ?? .undefined, `init`?.jsValue() ?? .undefined))
    }

    public static func error() -> Self {
        constructor[Keys.error]!().fromJSValue()!
    }

    public static func redirect(url: String, status: UInt16? = nil) -> Self {
        constructor[Keys.redirect]!(url.jsValue(), status?.jsValue() ?? .undefined).fromJSValue()!
    }

    @ReadonlyAttribute
    public var type: ResponseType

    @ReadonlyAttribute
    public var url: String

    @ReadonlyAttribute
    public var redirected: Bool

    @ReadonlyAttribute
    public var status: UInt16

    @ReadonlyAttribute
    public var ok: Bool

    @ReadonlyAttribute
    public var statusText: String

    @ReadonlyAttribute
    public var headers: Headers

    public func clone() -> Self {
        jsObject[Keys.clone]!().fromJSValue()!
    }
}
