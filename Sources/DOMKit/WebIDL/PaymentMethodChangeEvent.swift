// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentMethodChangeEvent: PaymentRequestUpdateEvent {
    override public class var constructor: JSFunction { JSObject.global[Strings.PaymentMethodChangeEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _methodName = ReadonlyAttribute(jsObject: jsObject, name: Strings.methodName)
        _methodDetails = ReadonlyAttribute(jsObject: jsObject, name: Strings.methodDetails)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: PaymentMethodChangeEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var methodName: String

    @ReadonlyAttribute
    public var methodDetails: JSObject?
}
