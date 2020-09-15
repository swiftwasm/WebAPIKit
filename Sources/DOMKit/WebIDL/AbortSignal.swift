
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class AbortSignal: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.AbortSignal.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _aborted = ReadonlyAttribute(jsObject: jsObject, name: "aborted")
        _onabort = OptionalClosureHandler(jsObject: jsObject, name: "onabort")
        super.init(withCompatibleObject: jsObject)
    }

    @ReadonlyAttribute
    public var aborted: Bool

    @OptionalClosureHandler
    public var onabort: EventHandler
}
