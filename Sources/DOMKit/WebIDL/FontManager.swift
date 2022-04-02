// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FontManager: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.FontManager].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func query(options: QueryOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.query].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func query(options: QueryOptions? = nil) async throws -> [FontMetadata] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.query].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
