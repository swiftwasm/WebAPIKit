// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PublicKeyCredentialRequestOptions: BridgedDictionary {
    public convenience init(challenge: BufferSource, timeout: UInt32, rpId: String, allowCredentials: [PublicKeyCredentialDescriptor], userVerification: String, extensions: AuthenticationExtensionsClientInputs) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.challenge] = challenge.jsValue()
        object[Strings.timeout] = timeout.jsValue()
        object[Strings.rpId] = rpId.jsValue()
        object[Strings.allowCredentials] = allowCredentials.jsValue()
        object[Strings.userVerification] = userVerification.jsValue()
        object[Strings.extensions] = extensions.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _challenge = ReadWriteAttribute(jsObject: object, name: Strings.challenge)
        _timeout = ReadWriteAttribute(jsObject: object, name: Strings.timeout)
        _rpId = ReadWriteAttribute(jsObject: object, name: Strings.rpId)
        _allowCredentials = ReadWriteAttribute(jsObject: object, name: Strings.allowCredentials)
        _userVerification = ReadWriteAttribute(jsObject: object, name: Strings.userVerification)
        _extensions = ReadWriteAttribute(jsObject: object, name: Strings.extensions)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var challenge: BufferSource

    @ReadWriteAttribute
    public var timeout: UInt32

    @ReadWriteAttribute
    public var rpId: String

    @ReadWriteAttribute
    public var allowCredentials: [PublicKeyCredentialDescriptor]

    @ReadWriteAttribute
    public var userVerification: String

    @ReadWriteAttribute
    public var extensions: AuthenticationExtensionsClientInputs
}