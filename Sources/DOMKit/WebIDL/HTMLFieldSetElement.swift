// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLFieldSetElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLFieldSetElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _disabled = ReadWriteAttribute(jsObject: jsObject, name: "disabled")
        _form = ReadonlyAttribute(jsObject: jsObject, name: "form")
        _name = ReadWriteAttribute(jsObject: jsObject, name: "name")
        _type = ReadonlyAttribute(jsObject: jsObject, name: "type")
        _elements = ReadonlyAttribute(jsObject: jsObject, name: "elements")
        _willValidate = ReadonlyAttribute(jsObject: jsObject, name: "willValidate")
        _validity = ReadonlyAttribute(jsObject: jsObject, name: "validity")
        _validationMessage = ReadonlyAttribute(jsObject: jsObject, name: "validationMessage")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadWriteAttribute
    public var disabled: Bool

    @ReadonlyAttribute
    public var form: HTMLFormElement?

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var type: String

    @ReadonlyAttribute
    public var elements: HTMLCollection

    @ReadonlyAttribute
    public var willValidate: Bool

    @ReadonlyAttribute
    public var validity: ValidityState

    @ReadonlyAttribute
    public var validationMessage: String

    public func checkValidity() -> Bool {
        jsObject["checkValidity"]!().fromJSValue()!
    }

    public func reportValidity() -> Bool {
        jsObject["reportValidity"]!().fromJSValue()!
    }

    public func setCustomValidity(error: String) {
        _ = jsObject["setCustomValidity"]!(error.jsValue())
    }
}
