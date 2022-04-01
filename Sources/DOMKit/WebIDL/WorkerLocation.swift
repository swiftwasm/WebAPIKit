// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WorkerLocation: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.WorkerLocation.function! }

    private enum Keys {
        static let hash: JSString = "hash"
        static let host: JSString = "host"
        static let hostname: JSString = "hostname"
        static let href: JSString = "href"
        static let origin: JSString = "origin"
        static let pathname: JSString = "pathname"
        static let port: JSString = "port"
        static let `protocol`: JSString = "protocol"
        static let search: JSString = "search"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _href = ReadonlyAttribute(jsObject: jsObject, name: Keys.href)
        _origin = ReadonlyAttribute(jsObject: jsObject, name: Keys.origin)
        _protocol = ReadonlyAttribute(jsObject: jsObject, name: Keys.protocol)
        _host = ReadonlyAttribute(jsObject: jsObject, name: Keys.host)
        _hostname = ReadonlyAttribute(jsObject: jsObject, name: Keys.hostname)
        _port = ReadonlyAttribute(jsObject: jsObject, name: Keys.port)
        _pathname = ReadonlyAttribute(jsObject: jsObject, name: Keys.pathname)
        _search = ReadonlyAttribute(jsObject: jsObject, name: Keys.search)
        _hash = ReadonlyAttribute(jsObject: jsObject, name: Keys.hash)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var href: String

    @ReadonlyAttribute
    public var origin: String

    @ReadonlyAttribute
    public var `protocol`: String

    @ReadonlyAttribute
    public var host: String

    @ReadonlyAttribute
    public var hostname: String

    @ReadonlyAttribute
    public var port: String

    @ReadonlyAttribute
    public var pathname: String

    @ReadonlyAttribute
    public var search: String

    @ReadonlyAttribute
    public var hash: String
}
