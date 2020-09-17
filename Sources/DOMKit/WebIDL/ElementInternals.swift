
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class ElementInternals: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.ElementInternals.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _form = ReadonlyAttribute(jsObject: jsObject, name: "form")
        _willValidate = ReadonlyAttribute(jsObject: jsObject, name: "willValidate")
        _validity = ReadonlyAttribute(jsObject: jsObject, name: "validity")
        _validationMessage = ReadonlyAttribute(jsObject: jsObject, name: "validationMessage")
        _labels = ReadonlyAttribute(jsObject: jsObject, name: "labels")
        self.jsObject = jsObject
    }

    public func setFormValue(value: FileOrStringOrFormData?, state: FileOrStringOrFormData?) {
        _ = jsObject.setFormValue!(value.jsValue(), state.jsValue())
    }

    public func setFormValue(value: FileOrStringOrFormData?) {
        _ = jsObject.setFormValue!(value.jsValue())
    }

    @ReadonlyAttribute
    public var form: HTMLFormElement?

    public func setValidity(flags: ValidityStateFlags, message: String, anchor: HTMLElement) {
        _ = jsObject.setValidity!(flags.jsValue(), message.jsValue(), anchor.jsValue())
    }

    public func setValidity(flags: ValidityStateFlags, message: String) {
        _ = jsObject.setValidity!(flags.jsValue(), message.jsValue())
    }

    public func setValidity(flags: ValidityStateFlags) {
        _ = jsObject.setValidity!(flags.jsValue())
    }

    @ReadonlyAttribute
    public var willValidate: Bool

    @ReadonlyAttribute
    public var validity: ValidityState

    @ReadonlyAttribute
    public var validationMessage: String

    public func checkValidity() -> Bool {
        return jsObject.checkValidity!().fromJSValue()!
    }

    public func reportValidity() -> Bool {
        return jsObject.reportValidity!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var labels: NodeList
}
