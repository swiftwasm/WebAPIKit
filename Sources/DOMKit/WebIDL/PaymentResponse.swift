// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentResponse: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.PaymentResponse].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _requestId = ReadonlyAttribute(jsObject: jsObject, name: Strings.requestId)
        _methodName = ReadonlyAttribute(jsObject: jsObject, name: Strings.methodName)
        _details = ReadonlyAttribute(jsObject: jsObject, name: Strings.details)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadonlyAttribute
    public var requestId: String

    @ReadonlyAttribute
    public var methodName: String

    @ReadonlyAttribute
    public var details: JSObject

    @inlinable public func complete(result: PaymentComplete? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.complete].function!(this: this, arguments: [result?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func complete(result: PaymentComplete? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.complete].function!(this: this, arguments: [result?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    @inlinable public func retry(errorFields: PaymentValidationErrors? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.retry].function!(this: this, arguments: [errorFields?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func retry(errorFields: PaymentValidationErrors? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.retry].function!(this: this, arguments: [errorFields?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }
}
