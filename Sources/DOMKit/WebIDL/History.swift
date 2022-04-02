// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class History: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.History].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _scrollRestoration = ReadWriteAttribute(jsObject: jsObject, name: Strings.scrollRestoration)
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    @ReadWriteAttribute
    public var scrollRestoration: ScrollRestoration

    @ReadonlyAttribute
    public var state: JSValue

    public func go(delta: Int32? = nil) {
        let this = jsObject
        _ = this[Strings.go].function!(this: this, arguments: [delta?.jsValue() ?? .undefined])
    }

    public func back() {
        let this = jsObject
        _ = this[Strings.back].function!(this: this, arguments: [])
    }

    public func forward() {
        let this = jsObject
        _ = this[Strings.forward].function!(this: this, arguments: [])
    }

    public func pushState(data: JSValue, unused: String, url: String? = nil) {
        let this = jsObject
        _ = this[Strings.pushState].function!(this: this, arguments: [data.jsValue(), unused.jsValue(), url?.jsValue() ?? .undefined])
    }

    public func replaceState(data: JSValue, unused: String, url: String? = nil) {
        let this = jsObject
        _ = this[Strings.replaceState].function!(this: this, arguments: [data.jsValue(), unused.jsValue(), url?.jsValue() ?? .undefined])
    }
}
