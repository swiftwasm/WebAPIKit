// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Clients: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Clients].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func get(id: String) -> JSPromise {
        let this = jsObject
        return this[Strings.get].function!(this: this, arguments: [id.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func get(id: String) async throws -> __UNSUPPORTED_UNION__ {
        let this = jsObject
        let _promise: JSPromise = this[Strings.get].function!(this: this, arguments: [id.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func matchAll(options: ClientQueryOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.matchAll].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func matchAll(options: ClientQueryOptions? = nil) async throws -> [Client] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.matchAll].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func openWindow(url: String) -> JSPromise {
        let this = jsObject
        return this[Strings.openWindow].function!(this: this, arguments: [url.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func openWindow(url: String) async throws -> WindowClient? {
        let this = jsObject
        let _promise: JSPromise = this[Strings.openWindow].function!(this: this, arguments: [url.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func claim() -> JSPromise {
        let this = jsObject
        return this[Strings.claim].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func claim() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.claim].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }
}
