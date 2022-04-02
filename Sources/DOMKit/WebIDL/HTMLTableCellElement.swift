// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTableCellElement: HTMLElement {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.HTMLTableCellElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _colSpan = ReadWriteAttribute(jsObject: jsObject, name: Strings.colSpan)
        _rowSpan = ReadWriteAttribute(jsObject: jsObject, name: Strings.rowSpan)
        _headers = ReadWriteAttribute(jsObject: jsObject, name: Strings.headers)
        _cellIndex = ReadonlyAttribute(jsObject: jsObject, name: Strings.cellIndex)
        _scope = ReadWriteAttribute(jsObject: jsObject, name: Strings.scope)
        _abbr = ReadWriteAttribute(jsObject: jsObject, name: Strings.abbr)
        _align = ReadWriteAttribute(jsObject: jsObject, name: Strings.align)
        _axis = ReadWriteAttribute(jsObject: jsObject, name: Strings.axis)
        _height = ReadWriteAttribute(jsObject: jsObject, name: Strings.height)
        _width = ReadWriteAttribute(jsObject: jsObject, name: Strings.width)
        _ch = ReadWriteAttribute(jsObject: jsObject, name: Strings.ch)
        _chOff = ReadWriteAttribute(jsObject: jsObject, name: Strings.chOff)
        _noWrap = ReadWriteAttribute(jsObject: jsObject, name: Strings.noWrap)
        _vAlign = ReadWriteAttribute(jsObject: jsObject, name: Strings.vAlign)
        _bgColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.bgColor)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var colSpan: UInt32

    @ReadWriteAttribute
    public var rowSpan: UInt32

    @ReadWriteAttribute
    public var headers: String

    @ReadonlyAttribute
    public var cellIndex: Int32

    @ReadWriteAttribute
    public var scope: String

    @ReadWriteAttribute
    public var abbr: String

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var axis: String

    @ReadWriteAttribute
    public var height: String

    @ReadWriteAttribute
    public var width: String

    @ReadWriteAttribute
    public var ch: String

    @ReadWriteAttribute
    public var chOff: String

    @ReadWriteAttribute
    public var noWrap: Bool

    @ReadWriteAttribute
    public var vAlign: String

    @ReadWriteAttribute
    public var bgColor: String
}
