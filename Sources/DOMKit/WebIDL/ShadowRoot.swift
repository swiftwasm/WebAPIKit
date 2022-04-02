// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ShadowRoot: DocumentFragment, DocumentOrShadowRoot {
    override public class var constructor: JSFunction { JSObject.global.ShadowRoot.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _mode = ReadonlyAttribute(jsObject: jsObject, name: Strings.mode)
        _delegatesFocus = ReadonlyAttribute(jsObject: jsObject, name: Strings.delegatesFocus)
        _slotAssignment = ReadonlyAttribute(jsObject: jsObject, name: Strings.slotAssignment)
        _host = ReadonlyAttribute(jsObject: jsObject, name: Strings.host)
        _onslotchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onslotchange)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var mode: ShadowRootMode

    @ReadonlyAttribute
    public var delegatesFocus: Bool

    @ReadonlyAttribute
    public var slotAssignment: SlotAssignmentMode

    @ReadonlyAttribute
    public var host: Element

    @ClosureAttribute.Optional1
    public var onslotchange: EventHandler
}
