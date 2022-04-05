// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class URLPattern: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.URLPattern].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _protocol = ReadonlyAttribute(jsObject: jsObject, name: Strings.protocol)
        _username = ReadonlyAttribute(jsObject: jsObject, name: Strings.username)
        _password = ReadonlyAttribute(jsObject: jsObject, name: Strings.password)
        _hostname = ReadonlyAttribute(jsObject: jsObject, name: Strings.hostname)
        _port = ReadonlyAttribute(jsObject: jsObject, name: Strings.port)
        _pathname = ReadonlyAttribute(jsObject: jsObject, name: Strings.pathname)
        _search = ReadonlyAttribute(jsObject: jsObject, name: Strings.search)
        _hash = ReadonlyAttribute(jsObject: jsObject, name: Strings.hash)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(input: URLPatternInput? = nil, baseURL: String? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [input?.jsValue ?? .undefined, baseURL?.jsValue ?? .undefined]))
    }

    @inlinable public func test(input: URLPatternInput? = nil, baseURL: String? = nil) -> Bool {
        let this = jsObject
        return this[Strings.test].function!(this: this, arguments: [input?.jsValue ?? .undefined, baseURL?.jsValue ?? .undefined]).fromJSValue()!
    }

    @inlinable public func exec(input: URLPatternInput? = nil, baseURL: String? = nil) -> URLPatternResult? {
        let this = jsObject
        return this[Strings.exec].function!(this: this, arguments: [input?.jsValue ?? .undefined, baseURL?.jsValue ?? .undefined]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var `protocol`: String

    @ReadonlyAttribute
    public var username: String

    @ReadonlyAttribute
    public var password: String

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
