// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentRequest: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.PaymentRequest].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _onpaymentmethodchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onpaymentmethodchange)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(methodData: [PaymentMethodData], details: PaymentDetailsInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [methodData.jsValue, details.jsValue]))
    }

    @inlinable public func show(detailsPromise: JSPromise? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.show].function!(this: this, arguments: [detailsPromise?.jsValue ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func show(detailsPromise: JSPromise? = nil) async throws -> PaymentResponse {
        let this = jsObject
        let _promise: JSPromise = this[Strings.show].function!(this: this, arguments: [detailsPromise?.jsValue ?? .undefined]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable public func abort() -> JSPromise {
        let this = jsObject
        return this[Strings.abort].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func abort() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.abort].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.value
    }

    @inlinable public func canMakePayment() -> JSPromise {
        let this = jsObject
        return this[Strings.canMakePayment].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func canMakePayment() async throws -> Bool {
        let this = jsObject
        let _promise: JSPromise = this[Strings.canMakePayment].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @ReadonlyAttribute
    public var id: String

    @ClosureAttribute1Optional
    public var onpaymentmethodchange: EventHandler
}
