// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextUpdateEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.TextUpdateEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _updateRangeStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.updateRangeStart)
        _updateRangeEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.updateRangeEnd)
        _text = ReadonlyAttribute(jsObject: jsObject, name: Strings.text)
        _selectionStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.selectionStart)
        _selectionEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.selectionEnd)
        _compositionStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.compositionStart)
        _compositionEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.compositionEnd)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(options: TextUpdateEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(options?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var updateRangeStart: UInt32

    @ReadonlyAttribute
    public var updateRangeEnd: UInt32

    @ReadonlyAttribute
    public var text: String

    @ReadonlyAttribute
    public var selectionStart: UInt32

    @ReadonlyAttribute
    public var selectionEnd: UInt32

    @ReadonlyAttribute
    public var compositionStart: UInt32

    @ReadonlyAttribute
    public var compositionEnd: UInt32
}