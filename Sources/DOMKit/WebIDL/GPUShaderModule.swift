// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUShaderModule: JSBridgedClass, GPUObjectBase {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.GPUShaderModule].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public func compilationInfo() -> JSPromise {
        let this = jsObject
        return this[Strings.compilationInfo].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func compilationInfo() async throws -> GPUCompilationInfo {
        let this = jsObject
        let _promise: JSPromise = this[Strings.compilationInfo].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
