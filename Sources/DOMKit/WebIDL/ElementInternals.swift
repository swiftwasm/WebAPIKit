
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

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
        _ = objectRef.setFormValue!(value.jsValue(), state.jsValue())
    }

    public func setFormValue(value: FileOrStringOrFormData?) {
        _ = objectRef.setFormValue!(value.jsValue())
    }

    @ReadonlyAttribute
    public var form: HTMLFormElement?

    public func setValidity(flags: ValidityStateFlags, message: String, anchor: HTMLElement) {
        _ = objectRef.setValidity!(flags.jsValue(), message.jsValue(), anchor.jsValue())
    }

    public func setValidity(flags: ValidityStateFlags, message: String) {
        _ = objectRef.setValidity!(flags.jsValue(), message.jsValue())
    }

    public func setValidity(flags: ValidityStateFlags) {
        _ = objectRef.setValidity!(flags.jsValue())
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
