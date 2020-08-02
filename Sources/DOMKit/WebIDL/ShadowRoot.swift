
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class ShadowRoot: DocumentFragment, DocumentOrShadowRoot {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.ShadowRoot.function! }

    public required init(objectRef: JSObjectRef) {
        _mode = ReadonlyAttribute(objectRef: objectRef, name: "mode")
        _host = ReadonlyAttribute(objectRef: objectRef, name: "host")
        _onslotchange = OptionalClosureHandler(objectRef: objectRef, name: "onslotchange")
        super.init(objectRef: objectRef)
    }

    @ReadonlyAttribute
    public var mode: ShadowRootMode

    @ReadonlyAttribute
    public var host: Element

    @OptionalClosureHandler
    public var onslotchange: EventHandler
}
