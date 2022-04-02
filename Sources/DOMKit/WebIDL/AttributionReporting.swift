// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AttributionReporting: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.AttributionReporting].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func registerAttributionSource(params: AttributionSourceParams) -> JSPromise {
        let this = jsObject
        return this[Strings.registerAttributionSource].function!(this: this, arguments: [params.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func registerAttributionSource(params: AttributionSourceParams) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.registerAttributionSource].function!(this: this, arguments: [params.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }
}
