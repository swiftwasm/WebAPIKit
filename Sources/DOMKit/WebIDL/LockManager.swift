// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class LockManager: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.LockManager].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func request(name: String, callback: LockGrantedCallback) -> JSPromise {
        jsObject[Strings.request]!(name.jsValue(), callback.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func request(name: String, callback: LockGrantedCallback) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.request]!(name.jsValue(), callback.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func request(name: String, options: LockOptions, callback: LockGrantedCallback) -> JSPromise {
        jsObject[Strings.request]!(name.jsValue(), options.jsValue(), callback.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func request(name: String, options: LockOptions, callback: LockGrantedCallback) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.request]!(name.jsValue(), options.jsValue(), callback.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func query() -> JSPromise {
        jsObject[Strings.query]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func query() async throws -> LockManagerSnapshot {
        let _promise: JSPromise = jsObject[Strings.query]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}