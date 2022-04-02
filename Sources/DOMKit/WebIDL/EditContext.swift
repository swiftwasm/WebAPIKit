// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EditContext: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.EditContext].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _text = ReadonlyAttribute(jsObject: jsObject, name: Strings.text)
        _selectionStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.selectionStart)
        _selectionEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.selectionEnd)
        _compositionRangeStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.compositionRangeStart)
        _compositionRangeEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.compositionRangeEnd)
        _isInComposition = ReadonlyAttribute(jsObject: jsObject, name: Strings.isInComposition)
        _controlBound = ReadonlyAttribute(jsObject: jsObject, name: Strings.controlBound)
        _selectionBound = ReadonlyAttribute(jsObject: jsObject, name: Strings.selectionBound)
        _characterBoundsRangeStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.characterBoundsRangeStart)
        _ontextupdate = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ontextupdate)
        _ontextformatupdate = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ontextformatupdate)
        _oncharacterboundsupdate = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.oncharacterboundsupdate)
        _oncompositionstart = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.oncompositionstart)
        _oncompositionend = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.oncompositionend)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(options: EditContextInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(options?.jsValue() ?? .undefined))
    }

    public func updateText(rangeStart: UInt32, rangeEnd: UInt32, text: String) {
        _ = jsObject[Strings.updateText]!(rangeStart.jsValue(), rangeEnd.jsValue(), text.jsValue())
    }

    public func updateSelection(start: UInt32, end: UInt32) {
        _ = jsObject[Strings.updateSelection]!(start.jsValue(), end.jsValue())
    }

    public func updateControlBound(controlBound: DOMRect) {
        _ = jsObject[Strings.updateControlBound]!(controlBound.jsValue())
    }

    public func updateSelectionBound(selectionBound: DOMRect) {
        _ = jsObject[Strings.updateSelectionBound]!(selectionBound.jsValue())
    }

    public func updateCharacterBounds(rangeStart: UInt32, characterBounds: [DOMRect]) {
        _ = jsObject[Strings.updateCharacterBounds]!(rangeStart.jsValue(), characterBounds.jsValue())
    }

    public func attachedElements() -> [Element] {
        jsObject[Strings.attachedElements]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var text: String

    @ReadonlyAttribute
    public var selectionStart: UInt32

    @ReadonlyAttribute
    public var selectionEnd: UInt32

    @ReadonlyAttribute
    public var compositionRangeStart: UInt32

    @ReadonlyAttribute
    public var compositionRangeEnd: UInt32

    @ReadonlyAttribute
    public var isInComposition: Bool

    @ReadonlyAttribute
    public var controlBound: DOMRect

    @ReadonlyAttribute
    public var selectionBound: DOMRect

    @ReadonlyAttribute
    public var characterBoundsRangeStart: UInt32

    public func characterBounds() -> [DOMRect] {
        jsObject[Strings.characterBounds]!().fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var ontextupdate: EventHandler

    @ClosureAttribute1Optional
    public var ontextformatupdate: EventHandler

    @ClosureAttribute1Optional
    public var oncharacterboundsupdate: EventHandler

    @ClosureAttribute1Optional
    public var oncompositionstart: EventHandler

    @ClosureAttribute1Optional
    public var oncompositionend: EventHandler
}
