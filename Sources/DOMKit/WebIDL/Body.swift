// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol Body: JSBridgedClass {}
public extension Body {
    // XXX: attribute 'body' is ignored

    @inlinable var bodyUsed: Bool { ReadonlyAttribute[Strings.bodyUsed, in: jsObject] }

    @inlinable func arrayBuffer() -> JSPromise {
        let this = jsObject
        return this[Strings.arrayBuffer].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable func arrayBuffer() async throws -> ArrayBuffer {
        let this = jsObject
        let _promise: JSPromise = this[Strings.arrayBuffer].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable func blob() -> JSPromise {
        let this = jsObject
        return this[Strings.blob].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable func blob() async throws -> Blob {
        let this = jsObject
        let _promise: JSPromise = this[Strings.blob].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable func formData() -> JSPromise {
        let this = jsObject
        return this[Strings.formData].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable func formData() async throws -> FormData {
        let this = jsObject
        let _promise: JSPromise = this[Strings.formData].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable func json() -> JSPromise {
        let this = jsObject
        return this[Strings.json].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable func json() async throws -> JSValue {
        let this = jsObject
        let _promise: JSPromise = this[Strings.json].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable func text() -> JSPromise {
        let this = jsObject
        return this[Strings.text].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable func text() async throws -> String {
        let this = jsObject
        let _promise: JSPromise = this[Strings.text].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }
}
