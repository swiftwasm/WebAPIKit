// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ElementInternals: JSBridgedClass, ARIAMixin {
    public class var constructor: JSFunction { JSObject.global[Strings.ElementInternals].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _states = ReadonlyAttribute(jsObject: jsObject, name: Strings.states)
        _shadowRoot = ReadonlyAttribute(jsObject: jsObject, name: Strings.shadowRoot)
        _form = ReadonlyAttribute(jsObject: jsObject, name: Strings.form)
        _willValidate = ReadonlyAttribute(jsObject: jsObject, name: Strings.willValidate)
        _validity = ReadonlyAttribute(jsObject: jsObject, name: Strings.validity)
        _validationMessage = ReadonlyAttribute(jsObject: jsObject, name: Strings.validationMessage)
        _labels = ReadonlyAttribute(jsObject: jsObject, name: Strings.labels)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var states: CustomStateSet

    @ReadonlyAttribute
    public var shadowRoot: ShadowRoot?

    public func setFormValue(value: __UNSUPPORTED_UNION__?, state: __UNSUPPORTED_UNION__? = nil) {
        _ = jsObject[Strings.setFormValue]!(value.jsValue(), state?.jsValue() ?? .undefined)
    }

    @ReadonlyAttribute
    public var form: HTMLFormElement?

    public func setValidity(flags: ValidityStateFlags? = nil, message: String? = nil, anchor: HTMLElement? = nil) {
        _ = jsObject[Strings.setValidity]!(flags?.jsValue() ?? .undefined, message?.jsValue() ?? .undefined, anchor?.jsValue() ?? .undefined)
    }

    @ReadonlyAttribute
    public var willValidate: Bool

    @ReadonlyAttribute
    public var validity: ValidityState

    @ReadonlyAttribute
    public var validationMessage: String

    public func checkValidity() -> Bool {
        jsObject[Strings.checkValidity]!().fromJSValue()!
    }

    public func reportValidity() -> Bool {
        jsObject[Strings.reportValidity]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var labels: NodeList
}
