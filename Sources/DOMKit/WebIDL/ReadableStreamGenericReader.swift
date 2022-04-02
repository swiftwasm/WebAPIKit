// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol ReadableStreamGenericReader: JSBridgedClass {}
public extension ReadableStreamGenericReader {
    var closed: JSPromise { ReadonlyAttribute[Strings.closed, in: jsObject] }

    func cancel(reason: JSValue? = nil) -> JSPromise {
        jsObject[Strings.cancel]!(reason?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    func cancel(reason: JSValue? = nil) async throws {
        let _promise: JSPromise = jsObject[Strings.cancel]!(reason?.jsValue() ?? .undefined).fromJSValue()!
        _ = try await _promise.get()
    }
}
