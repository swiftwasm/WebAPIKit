// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLTableColElement: HTMLElement {
    override public class var constructor: JSFunction { JSObject.global[Strings.HTMLTableColElement].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _span = ReadWriteAttribute(jsObject: jsObject, name: Strings.span)
        _align = ReadWriteAttribute(jsObject: jsObject, name: Strings.align)
        _ch = ReadWriteAttribute(jsObject: jsObject, name: Strings.ch)
        _chOff = ReadWriteAttribute(jsObject: jsObject, name: Strings.chOff)
        _vAlign = ReadWriteAttribute(jsObject: jsObject, name: Strings.vAlign)
        _width = ReadWriteAttribute(jsObject: jsObject, name: Strings.width)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadWriteAttribute
    public var span: UInt32

    @ReadWriteAttribute
    public var align: String

    @ReadWriteAttribute
    public var ch: String

    @ReadWriteAttribute
    public var chOff: String

    @ReadWriteAttribute
    public var vAlign: String

    @ReadWriteAttribute
    public var width: String
}
