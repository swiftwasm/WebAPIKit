// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Worklet: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Worklet].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func addModule(moduleURL: String, options: WorkletOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.addModule].function!(this: this, arguments: [moduleURL.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func addModule(moduleURL: String, options: WorkletOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.addModule].function!(this: this, arguments: [moduleURL.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }
}
