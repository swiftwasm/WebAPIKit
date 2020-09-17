
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class ShadowRoot: DocumentFragment, DocumentOrShadowRoot {
    override public class var constructor: JSFunction { JSObject.global.ShadowRoot.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _mode = ReadonlyAttribute(jsObject: jsObject, name: "mode")
        _host = ReadonlyAttribute(jsObject: jsObject, name: "host")
        _onslotchange = OptionalClosureHandler(jsObject: jsObject, name: "onslotchange")
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var mode: ShadowRootMode

    @ReadonlyAttribute
    public var host: Element

    @OptionalClosureHandler
    public var onslotchange: EventHandler
}
