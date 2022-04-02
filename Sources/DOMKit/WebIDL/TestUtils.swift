// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public enum TestUtils {
    public static var jsObject: JSObject {
        JSObject.global[Strings.TestUtils].object!
    }

    public static func gc() -> JSPromise {
        JSObject.global[Strings.TestUtils].object![Strings.gc]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func gc() async throws {
        let _promise: JSPromise = JSObject.global[Strings.TestUtils].object![Strings.gc]!().fromJSValue()!
        _ = try await _promise.get()
    }
}
