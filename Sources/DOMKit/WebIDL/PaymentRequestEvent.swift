// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentRequestEvent: ExtendableEvent {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.PaymentRequestEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _topOrigin = ReadonlyAttribute(jsObject: jsObject, name: Strings.topOrigin)
        _paymentRequestOrigin = ReadonlyAttribute(jsObject: jsObject, name: Strings.paymentRequestOrigin)
        _paymentRequestId = ReadonlyAttribute(jsObject: jsObject, name: Strings.paymentRequestId)
        _methodData = ReadonlyAttribute(jsObject: jsObject, name: Strings.methodData)
        _total = ReadonlyAttribute(jsObject: jsObject, name: Strings.total)
        _modifiers = ReadonlyAttribute(jsObject: jsObject, name: Strings.modifiers)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: PaymentRequestEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), eventInitDict?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var topOrigin: String

    @ReadonlyAttribute
    public var paymentRequestOrigin: String

    @ReadonlyAttribute
    public var paymentRequestId: String

    @ReadonlyAttribute
    public var methodData: [PaymentMethodData]

    @ReadonlyAttribute
    public var total: JSObject

    @ReadonlyAttribute
    public var modifiers: [PaymentDetailsModifier]

    @inlinable public func openWindow(url: String) -> JSPromise {
        let this = jsObject
        return this[Strings.openWindow].function!(this: this, arguments: [url.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func openWindow(url: String) async throws -> WindowClient? {
        let this = jsObject
        let _promise: JSPromise = this[Strings.openWindow].function!(this: this, arguments: [url.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @inlinable public func changePaymentMethod(methodName: String, methodDetails: JSObject? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.changePaymentMethod].function!(this: this, arguments: [methodName.jsValue(), methodDetails?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func changePaymentMethod(methodName: String, methodDetails: JSObject? = nil) async throws -> PaymentRequestDetailsUpdate? {
        let this = jsObject
        let _promise: JSPromise = this[Strings.changePaymentMethod].function!(this: this, arguments: [methodName.jsValue(), methodDetails?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @inlinable public func respondWith(handlerResponsePromise: JSPromise) {
        let this = jsObject
        _ = this[Strings.respondWith].function!(this: this, arguments: [handlerResponsePromise.jsValue()])
    }
}
