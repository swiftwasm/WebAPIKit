// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLOptionElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLOptionElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _disabled = ReadWriteAttribute(jsObject: jsObject, name: Strings.disabled)
        _form = ReadonlyAttribute(jsObject: jsObject, name: Strings.form)
        _label = ReadWriteAttribute(jsObject: jsObject, name: Strings.label)
        _defaultSelected = ReadWriteAttribute(jsObject: jsObject, name: Strings.defaultSelected)
        _selected = ReadWriteAttribute(jsObject: jsObject, name: Strings.selected)
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        _text = ReadWriteAttribute(jsObject: jsObject, name: Strings.text)
        _index = ReadonlyAttribute(jsObject: jsObject, name: Strings.index)
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
