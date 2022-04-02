// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BackgroundFetchManager: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.BackgroundFetchManager].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func fetch(id: String, requests: __UNSUPPORTED_UNION__, options: BackgroundFetchOptions? = nil) -> JSPromise {
        jsObject[Strings.fetch]!(id.jsValue(), requests.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func fetch(id: String, requests: __UNSUPPORTED_UNION__, options: BackgroundFetchOptions? = nil) async throws -> BackgroundFetchRegistration {
        let _promise: JSPromise = jsObject[Strings.fetch]!(id.jsValue(), requests.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func get(id: String) -> JSPromise {
        jsObject[Strings.get]!(id.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func get(id: String) async throws -> BackgroundFetchRegistration? {
        let _promise: JSPromise = jsObject[Strings.get]!(id.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getIds() -> JSPromise {
        jsObject[Strings.getIds]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getIds() async throws -> [String] {
        let _promise: JSPromise = jsObject[Strings.getIds]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}