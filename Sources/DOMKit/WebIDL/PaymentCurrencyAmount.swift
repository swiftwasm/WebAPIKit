// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentCurrencyAmount: BridgedDictionary {
    public convenience init(currency: String, value: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.currency] = currency.jsValue
        object[Strings.value] = value.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _currency = ReadWriteAttribute(jsObject: object, name: Strings.currency)
        _value = ReadWriteAttribute(jsObject: object, name: Strings.value)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var currency: String

    @ReadWriteAttribute
    public var value: String
}
