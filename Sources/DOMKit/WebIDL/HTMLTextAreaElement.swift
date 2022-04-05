// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTextAreaElement: HTMLElement {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.HTMLTextAreaElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _autocomplete = ReadWriteAttribute(jsObject: jsObject, name: Strings.autocomplete)
        _cols = ReadWriteAttribute(jsObject: jsObject, name: Strings.cols)
        _dirName = ReadWriteAttribute(jsObject: jsObject, name: Strings.dirName)
        _disabled = ReadWriteAttribute(jsObject: jsObject, name: Strings.disabled)
        _form = ReadonlyAttribute(jsObject: jsObject, name: Strings.form)
        _maxLength = ReadWriteAttribute(jsObject: jsObject, name: Strings.maxLength)
        _minLength = ReadWriteAttribute(jsObject: jsObject, name: Strings.minLength)
        _name = ReadWriteAttribute(jsObject: jsObject, name: Strings.name)
        _placeholder = ReadWriteAttribute(jsObject: jsObject, name: Strings.placeholder)
        _readOnly = ReadWriteAttribute(jsObject: jsObject, name: Strings.readOnly)
        _required = ReadWriteAttribute(jsObject: jsObject, name: Strings.required)
        _rows = ReadWriteAttribute(jsObject: jsObject, name: Strings.rows)
        _wrap = ReadWriteAttribute(jsObject: jsObject, name: Strings.wrap)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _defaultValue = ReadWriteAttribute(jsObject: jsObject, name: Strings.defaultValue)
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        _textLength = ReadonlyAttribute(jsObject: jsObject, name: Strings.textLength)
        _willValidate = ReadonlyAttribute(jsObject: jsObject, name: Strings.willValidate)
        _validity = ReadonlyAttribute(jsObject: jsObject, name: Strings.validity)
        _validationMessage = ReadonlyAttribute(jsObject: jsObject, name: Strings.validationMessage)
        _labels = ReadonlyAttribute(jsObject: jsObject, name: Strings.labels)
        _selectionStart = ReadWriteAttribute(jsObject: jsObject, name: Strings.selectionStart)
        _selectionEnd = ReadWriteAttribute(jsObject: jsObject, name: Strings.selectionEnd)
        _selectionDirection = ReadWriteAttribute(jsObject: jsObject, name: Strings.selectionDirection)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var autocomplete: String

    @ReadWriteAttribute
    public var cols: UInt32

    @ReadWriteAttribute
    public var dirName: String

    @ReadWriteAttribute
    public var disabled: Bool

    @ReadonlyAttribute
    public var form: HTMLFormElement?

    @ReadWriteAttribute
    public var maxLength: Int32

    @ReadWriteAttribute
    public var minLength: Int32

    @ReadWriteAttribute
    public var name: String

    @ReadWriteAttribute
    public var placeholder: String

    @ReadWriteAttribute
    public var readOnly: Bool

    @ReadWriteAttribute
    public var required: Bool

    @ReadWriteAttribute
    public var rows: UInt32

    @ReadWriteAttribute
    public var wrap: String

    @ReadonlyAttribute
    public var type: String

    @ReadWriteAttribute
    public var defaultValue: String

    @ReadWriteAttribute
    public var value: String

    @ReadonlyAttribute
    public var textLength: UInt32

    @ReadonlyAttribute
    public var willValidate: Bool

    @ReadonlyAttribute
    public var validity: ValidityState

    @ReadonlyAttribute
    public var validationMessage: String

    @inlinable public func checkValidity() -> Bool {
        let this = jsObject
        return this[Strings.checkValidity].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func reportValidity() -> Bool {
        let this = jsObject
        return this[Strings.reportValidity].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func setCustomValidity(error: String) {
        let this = jsObject
        _ = this[Strings.setCustomValidity].function!(this: this, arguments: [error.jsValue])
    }

    @ReadonlyAttribute
    public var labels: NodeList

    @inlinable public func select() {
        let this = jsObject
        _ = this[Strings.select].function!(this: this, arguments: [])
    }

    @ReadWriteAttribute
    public var selectionStart: UInt32

    @ReadWriteAttribute
    public var selectionEnd: UInt32

    @ReadWriteAttribute
    public var selectionDirection: String

    @inlinable public func setRangeText(replacement: String) {
        let this = jsObject
        _ = this[Strings.setRangeText].function!(this: this, arguments: [replacement.jsValue])
    }

    @inlinable public func setRangeText(replacement: String, start: UInt32, end: UInt32, selectionMode: SelectionMode? = nil) {
        let this = jsObject
        _ = this[Strings.setRangeText].function!(this: this, arguments: [replacement.jsValue, start.jsValue, end.jsValue, selectionMode?.jsValue ?? .undefined])
    }

    @inlinable public func setSelectionRange(start: UInt32, end: UInt32, direction: String? = nil) {
        let this = jsObject
        _ = this[Strings.setSelectionRange].function!(this: this, arguments: [start.jsValue, end.jsValue, direction?.jsValue ?? .undefined])
    }
}
