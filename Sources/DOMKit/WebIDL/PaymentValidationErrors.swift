// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentValidationErrors: BridgedDictionary {
    public convenience init(error: String, paymentMethod: JSObject) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.error] = error.jsValue
        object[Strings.paymentMethod] = paymentMethod.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _error = ReadWriteAttribute(jsObject: object, name: Strings.error)
        _paymentMethod = ReadWriteAttribute(jsObject: object, name: Strings.paymentMethod)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var error: String

    @ReadWriteAttribute
    public var paymentMethod: JSObject
}
