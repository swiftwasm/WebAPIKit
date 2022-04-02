// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentInstruments: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.PaymentInstruments].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func delete(instrumentKey: String) -> JSPromise {
        let this = jsObject
        return this[Strings.delete].function!(this: this, arguments: [instrumentKey.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func delete(instrumentKey: String) async throws -> Bool {
        let this = jsObject
        let _promise: JSPromise = this[Strings.delete].function!(this: this, arguments: [instrumentKey.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func get(instrumentKey: String) -> JSPromise {
        let this = jsObject
        return this[Strings.get].function!(this: this, arguments: [instrumentKey.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func get(instrumentKey: String) async throws -> JSValue {
        let this = jsObject
        let _promise: JSPromise = this[Strings.get].function!(this: this, arguments: [instrumentKey.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func keys() -> JSPromise {
        let this = jsObject
        return this[Strings.keys].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func keys() async throws -> [String] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.keys].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func has(instrumentKey: String) -> JSPromise {
        let this = jsObject
        return this[Strings.has].function!(this: this, arguments: [instrumentKey.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func has(instrumentKey: String) async throws -> Bool {
        let this = jsObject
        let _promise: JSPromise = this[Strings.has].function!(this: this, arguments: [instrumentKey.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func set(instrumentKey: String, details: PaymentInstrument) -> JSPromise {
        let this = jsObject
        return this[Strings.set].function!(this: this, arguments: [instrumentKey.jsValue(), details.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func set(instrumentKey: String, details: PaymentInstrument) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.set].function!(this: this, arguments: [instrumentKey.jsValue(), details.jsValue()]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func clear() -> JSPromise {
        let this = jsObject
        return this[Strings.clear].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func clear() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.clear].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.get()
    }
}
