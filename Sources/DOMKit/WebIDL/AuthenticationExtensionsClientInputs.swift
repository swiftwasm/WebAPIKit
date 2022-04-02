// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AuthenticationExtensionsClientInputs: BridgedDictionary {
    public convenience init(payment: AuthenticationExtensionsPaymentInputs, appid: String, appidExclude: String, uvm: Bool, credProps: Bool, largeBlob: AuthenticationExtensionsLargeBlobInputs) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.payment] = payment.jsValue()
        object[Strings.appid] = appid.jsValue()
        object[Strings.appidExclude] = appidExclude.jsValue()
        object[Strings.uvm] = uvm.jsValue()
        object[Strings.credProps] = credProps.jsValue()
        object[Strings.largeBlob] = largeBlob.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _payment = ReadWriteAttribute(jsObject: object, name: Strings.payment)
        _appid = ReadWriteAttribute(jsObject: object, name: Strings.appid)
        _appidExclude = ReadWriteAttribute(jsObject: object, name: Strings.appidExclude)
        _uvm = ReadWriteAttribute(jsObject: object, name: Strings.uvm)
        _credProps = ReadWriteAttribute(jsObject: object, name: Strings.credProps)
        _largeBlob = ReadWriteAttribute(jsObject: object, name: Strings.largeBlob)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var payment: AuthenticationExtensionsPaymentInputs

    @ReadWriteAttribute
    public var appid: String

    @ReadWriteAttribute
    public var appidExclude: String

    @ReadWriteAttribute
    public var uvm: Bool

    @ReadWriteAttribute
    public var credProps: Bool

    @ReadWriteAttribute
    public var largeBlob: AuthenticationExtensionsLargeBlobInputs
}