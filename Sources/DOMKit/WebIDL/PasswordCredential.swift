// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PasswordCredential: Credential, CredentialUserData {
    override public class var constructor: JSFunction { JSObject.global[Strings.PasswordCredential].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _password = ReadonlyAttribute(jsObject: jsObject, name: Strings.password)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(form: HTMLFormElement) {
        self.init(unsafelyWrapping: Self.constructor.new(form.jsValue()))
    }

    public convenience init(data: PasswordCredentialData) {
        self.init(unsafelyWrapping: Self.constructor.new(data.jsValue()))
    }

    @ReadonlyAttribute
    public var password: String
}
