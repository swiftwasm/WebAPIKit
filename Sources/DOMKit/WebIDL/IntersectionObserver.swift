// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IntersectionObserver: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.IntersectionObserver].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _root = ReadonlyAttribute(jsObject: jsObject, name: Strings.root)
        _rootMargin = ReadonlyAttribute(jsObject: jsObject, name: Strings.rootMargin)
        _thresholds = ReadonlyAttribute(jsObject: jsObject, name: Strings.thresholds)
        self.jsObject = jsObject
    }

    // XXX: constructor is ignored

    @ReadonlyAttribute
    public var root: Document_or_Element?

    @ReadonlyAttribute
    public var rootMargin: String

    @ReadonlyAttribute
    public var thresholds: [Double]

    @inlinable public func observe(target: Element) {
        let this = jsObject
        _ = this[Strings.observe].function!(this: this, arguments: [target.jsValue()])
    }

    @inlinable public func unobserve(target: Element) {
        let this = jsObject
        _ = this[Strings.unobserve].function!(this: this, arguments: [target.jsValue()])
    }

    @inlinable public func disconnect() {
        let this = jsObject
        _ = this[Strings.disconnect].function!(this: this, arguments: [])
    }

    @inlinable public func takeRecords() -> [IntersectionObserverEntry] {
        let this = jsObject
        return this[Strings.takeRecords].function!(this: this, arguments: []).fromJSValue()!
    }
}
