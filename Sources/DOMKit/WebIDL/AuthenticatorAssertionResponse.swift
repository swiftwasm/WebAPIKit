// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AuthenticatorAssertionResponse: AuthenticatorResponse {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.AuthenticatorAssertionResponse].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _authenticatorData = ReadonlyAttribute(jsObject: jsObject, name: Strings.authenticatorData)
        _signature = ReadonlyAttribute(jsObject: jsObject, name: Strings.signature)
        _userHandle = ReadonlyAttribute(jsObject: jsObject, name: Strings.userHandle)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var authenticatorData: ArrayBuffer

    @ReadonlyAttribute
    public var signature: ArrayBuffer

    @ReadonlyAttribute
    public var userHandle: ArrayBuffer?
}
