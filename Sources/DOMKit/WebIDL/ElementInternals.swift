
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class ElementInternals: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.ElementInternals.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _form = ReadonlyAttribute(objectRef: objectRef, name: "form")
        _willValidate = ReadonlyAttribute(objectRef: objectRef, name: "willValidate")
        _validity = ReadonlyAttribute(objectRef: objectRef, name: "validity")
        _validationMessage = ReadonlyAttribute(objectRef: objectRef, name: "validationMessage")
        _labels = ReadonlyAttribute(objectRef: objectRef, name: "labels")
        self.objectRef = objectRef
    }

    public func setFormValue(value: FileOrStringOrFormData?, state: FileOrStringOrFormData?) {
        _ = objectRef.setFormValue!(JSValue(from: value), JSValue(from: state))
    }

    public func setFormValue(value: FileOrStringOrFormData?) {
        _ = objectRef.setFormValue!(JSValue(from: value))
    }

    @ReadonlyAttribute
    public var form: HTMLFormElement?

    public func setValidity(flags: ValidityStateFlags, message: String, anchor: HTMLElement) {
        _ = objectRef.setValidity!(JSValue(from: flags), JSValue(from: message), JSValue(from: anchor))
    }

    public func setValidity(flags: ValidityStateFlags, message: String) {
        _ = objectRef.setValidity!(JSValue(from: flags), JSValue(from: message))
    }

    public func setValidity(flags: ValidityStateFlags) {
        _ = objectRef.setValidity!(JSValue(from: flags))
    }

    @ReadonlyAttribute
    public var willValidate: Bool

    @ReadonlyAttribute
    public var validity: ValidityState

    @ReadonlyAttribute
    public var validationMessage: String

    public func checkValidity() -> Bool {
        return objectRef.checkValidity!().fromJSValue()
    }

    public func reportValidity() -> Bool {
        return objectRef.reportValidity!().fromJSValue()
    }

    @ReadonlyAttribute
    public var labels: NodeList
}
