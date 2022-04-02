// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Scheduler: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Scheduler].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func postTask(callback: SchedulerPostTaskCallback, options: SchedulerPostTaskOptions? = nil) -> JSPromise {
        jsObject[Strings.postTask]!(callback.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func postTask(callback: SchedulerPostTaskCallback, options: SchedulerPostTaskOptions? = nil) async throws -> JSValue {
        let _promise: JSPromise = jsObject[Strings.postTask]!(callback.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}