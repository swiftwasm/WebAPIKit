// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTableElement: HTMLElement {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.HTMLTableElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _caption = ReadWriteAttribute(jsObject: jsObject, name: Strings.caption)
        _tHead = ReadWriteAttribute(jsObject: jsObject, name: Strings.tHead)
        _tFoot = ReadWriteAttribute(jsObject: jsObject, name: Strings.tFoot)
        _tBodies = ReadonlyAttribute(jsObject: jsObject, name: Strings.tBodies)
        _rows = ReadonlyAttribute(jsObject: jsObject, name: Strings.rows)
        _align = ReadWriteAttribute(jsObject: jsObject, name: Strings.align)
        _border = ReadWriteAttribute(jsObject: jsObject, name: Strings.border)
        _frame = ReadWriteAttribute(jsObject: jsObject, name: Strings.frame)
        _rules = ReadWriteAttribute(jsObject: jsObject, name: Strings.rules)
        _summary = ReadWriteAttribute(jsObject: jsObject, name: Strings.summary)
        _width = ReadWriteAttribute(jsObject: jsObject, name: Strings.width)
        _bgColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.bgColor)
        _cellPadding = ReadWriteAttribute(jsObject: jsObject, name: Strings.cellPadding)
        _cellSpacing = ReadWriteAttribute(jsObject: jsObject, name: Strings.cellSpacing)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var caption: HTMLTableCaptionElement?

    @inlinable public func createCaption() -> HTMLTableCaptionElement {
        let this = jsObject
        return this[Strings.createCaption].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func deleteCaption() {
        let this = jsObject
        _ = this[Strings.deleteCaption].function!(this: this, arguments: [])
    }

    @ReadWriteAttribute
    public var tHead: HTMLTableSectionElement?

    @inlinable public func createTHead() -> HTMLTableSectionElement {
        let this = jsObject
        return this[Strings.createTHead].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func deleteTHead() {
        let this = jsObject
        _ = this[Strings.deleteTHead].function!(this: this, arguments: [])
    }

    @ReadWriteAttribute
    public var tFoot: HTMLTableSectionElement?

    @inlinable public func createTFoot() -> HTMLTableSectionElement {
        let this = jsObject
        return this[Strings.createTFoot].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func deleteTFoot() {
        let this = jsObject
        _ = this[Strings.deleteTFoot].function!(this: this, arguments: [])
    }

    @ReadonlyAttribute
    public var tBodies: HTMLCollection

    @inlinable public func createTBody() -> HTMLTableSectionElement {
        let this = jsObject
        return this[Strings.createTBody].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadonlyAttribute
    public var rows: HTMLCollection

    @inlinable public func insertRow(index: Int32? = nil) -> HTMLTableRowElement {
        let this = jsObject
        return this[Strings.insertRow].function!(this: this, arguments: [index?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func deleteRow(index: Int32) {
        let this = jsObject
        _ = this[Strings.deleteRow].function!(this: this, arguments: [index.jsValue()])
    }

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var border: String

    @ReadWriteAttribute
    public var frame: String

    @ReadWriteAttribute
    public var rules: String

    @ReadWriteAttribute
    public var summary: String

    @ReadWriteAttribute
    public var width: String

    @ReadWriteAttribute
    public var bgColor: String

    @ReadWriteAttribute
    public var cellPadding: String

    @ReadWriteAttribute
    public var cellSpacing: String
}
