// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTableSectionElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLTableSectionElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _rows = ReadonlyAttribute(jsObject: jsObject, name: Strings.rows)
        _align = ReadWriteAttribute(jsObject: jsObject, name: Strings.align)
        _ch = ReadWriteAttribute(jsObject: jsObject, name: Strings.ch)
        _chOff = ReadWriteAttribute(jsObject: jsObject, name: Strings.chOff)
        _vAlign = ReadWriteAttribute(jsObject: jsObject, name: Strings.vAlign)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadonlyAttribute
    public var rows: HTMLCollection

    public func insertRow(index: Int32? = nil) -> HTMLTableRowElement {
        jsObject[Strings.insertRow]!(index?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func deleteRow(index: Int32) {
        _ = jsObject[Strings.deleteRow]!(index.jsValue())
    }

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var ch: String

    @ReadWriteAttribute
    public var chOff: String

    @ReadWriteAttribute
    public var vAlign: String
}
