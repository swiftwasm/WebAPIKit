// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTableRowElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global.HTMLTableRowElement.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _rowIndex = ReadonlyAttribute(jsObject: jsObject, name: "rowIndex")
        _sectionRowIndex = ReadonlyAttribute(jsObject: jsObject, name: "sectionRowIndex")
        _cells = ReadonlyAttribute(jsObject: jsObject, name: "cells")
        _align = ReadWriteAttribute(jsObject: jsObject, name: "align")
        _ch = ReadWriteAttribute(jsObject: jsObject, name: "ch")
        _chOff = ReadWriteAttribute(jsObject: jsObject, name: "chOff")
        _vAlign = ReadWriteAttribute(jsObject: jsObject, name: "vAlign")
        _bgColor = ReadWriteAttribute(jsObject: jsObject, name: "bgColor")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    @ReadonlyAttribute
    public var rowIndex: Int32

    @ReadonlyAttribute
    public var sectionRowIndex: Int32

    @ReadonlyAttribute
    public var cells: HTMLCollection

    public func insertCell(index: Int32? = nil) -> HTMLTableCellElement {
        jsObject["insertCell"]!(index?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func deleteCell(index: Int32) {
        _ = jsObject["deleteCell"]!(index.jsValue())
    }

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var ch: String

    @ReadWriteAttribute
    public var chOff: String

    @ReadWriteAttribute
    public var vAlign: String

    @ReadWriteAttribute
    public var bgColor: String
}
