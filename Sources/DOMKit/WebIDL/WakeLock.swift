// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WakeLock: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.WakeLock].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func request(type: WakeLockType? = nil) -> JSPromise {
        jsObject[Strings.request]!(type?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func request(type: WakeLockType? = nil) async throws -> WakeLockSentinel {
        let _promise: JSPromise = jsObject[Strings.request]!(type?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
