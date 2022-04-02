// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PaymentManager: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.PaymentManager].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _instruments = ReadonlyAttribute(jsObject: jsObject, name: Strings.instruments)
        _userHint = ReadWriteAttribute(jsObject: jsObject, name: Strings.userHint)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var instruments: PaymentInstruments

    @ReadWriteAttribute
    public var userHint: String
}
