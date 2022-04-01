// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLOptionElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLOptionElement.function! }

    private enum Keys {
        static let defaultSelected: JSString = "defaultSelected"
        static let disabled: JSString = "disabled"
        static let form: JSString = "form"
        static let index: JSString = "index"
        static let label: JSString = "label"
        static let selected: JSString = "selected"
        static let text: JSString = "text"
        static let value: JSString = "value"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _disabled = ReadWriteAttribute(jsObject: jsObject, name: Keys.disabled)
        _form = ReadonlyAttribute(jsObject: jsObject, name: Keys.form)
        _label = ReadWriteAttribute(jsObject: jsObject, name: Keys.label)
        _defaultSelected = ReadWriteAttribute(jsObject: jsObject, name: Keys.defaultSelected)
        _selected = ReadWriteAttribute(jsObject: jsObject, name: Keys.selected)
        _value = ReadWriteAttribute(jsObject: jsObject, name: Keys.value)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Keys.text)
        _index = ReadonlyAttribute(jsObject: jsObject, name: Keys.index)
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
    public var label: String

    @ReadWriteAttribute
    public var defaultSelected: Bool

    @ReadWriteAttribute
    public var selected: Bool

    @ReadWriteAttribute
    public var value: String

    @ReadWriteAttribute
    public var text: String

    @ReadonlyAttribute
    public var index: Int32
}
