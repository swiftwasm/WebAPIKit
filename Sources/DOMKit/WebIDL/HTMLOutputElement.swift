// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLOutputElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLOutputElement.function! }

    private enum Keys {
        static let name: JSString = "name"
        static let validationMessage: JSString = "validationMessage"
        static let checkValidity: JSString = "checkValidity"
        static let type: JSString = "type"
        static let willValidate: JSString = "willValidate"
        static let validity: JSString = "validity"
        static let form: JSString = "form"
        static let labels: JSString = "labels"
        static let htmlFor: JSString = "htmlFor"
        static let reportValidity: JSString = "reportValidity"
        static let defaultValue: JSString = "defaultValue"
        static let setCustomValidity: JSString = "setCustomValidity"
        static let value: JSString = "value"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _htmlFor = ReadonlyAttribute(jsObject: jsObject, name: Keys.htmlFor)
        _form = ReadonlyAttribute(jsObject: jsObject, name: Keys.form)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Keys.name)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Keys.type)
        _defaultValue = ReadWriteAttribute(jsObject: jsObject, name: Keys.defaultValue)
        _value = ReadWriteAttribute(jsObject: jsObject, name: Keys.value)
        _willValidate = ReadonlyAttribute(jsObject: jsObject, name: Keys.willValidate)
        _validity = ReadonlyAttribute(jsObject: jsObject, name: Keys.validity)
        _validationMessage = ReadonlyAttribute(jsObject: jsObject, name: Keys.validationMessage)
        _labels = ReadonlyAttribute(jsObject: jsObject, name: Keys.labels)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadonlyAttribute
    public var htmlFor: DOMTokenList

    @ReadonlyAttribute
    public var form: HTMLFormElement?

    @ReadWriteAttribute
    public var name: String

    @ReadonlyAttribute
    public var type: String

    @ReadWriteAttribute
    public var defaultValue: String

    @ReadWriteAttribute
    public var value: String

    @ReadonlyAttribute
    public var willValidate: Bool

    @ReadonlyAttribute
    public var validity: ValidityState

    @ReadonlyAttribute
    public var validationMessage: String

    public func checkValidity() -> Bool {
        jsObject[Keys.checkValidity]!().fromJSValue()!
    }

    public func reportValidity() -> Bool {
        jsObject[Keys.reportValidity]!().fromJSValue()!
    }

    public func setCustomValidity(error: String) {
        _ = jsObject[Keys.setCustomValidity]!(error.jsValue())
    }

    @ReadonlyAttribute
    public var labels: NodeList
}
