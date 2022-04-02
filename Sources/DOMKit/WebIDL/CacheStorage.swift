// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CacheStorage: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.CacheStorage].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func match(request: RequestInfo, options: MultiCacheQueryOptions? = nil) -> JSPromise {
        jsObject[Strings.match]!(request.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func match(request: RequestInfo, options: MultiCacheQueryOptions? = nil) async throws -> __UNSUPPORTED_UNION__ {
        let _promise: JSPromise = jsObject[Strings.match]!(request.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func has(cacheName: String) -> JSPromise {
        jsObject[Strings.has]!(cacheName.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func has(cacheName: String) async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.has]!(cacheName.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func open(cacheName: String) -> JSPromise {
        jsObject[Strings.open]!(cacheName.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func open(cacheName: String) async throws -> Cache {
        let _promise: JSPromise = jsObject[Strings.open]!(cacheName.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func delete(cacheName: String) -> JSPromise {
        jsObject[Strings.delete]!(cacheName.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func delete(cacheName: String) async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.delete]!(cacheName.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func keys() -> JSPromise {
        jsObject[Strings.keys]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func keys() async throws -> [String] {
        let _promise: JSPromise = jsObject[Strings.keys]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}