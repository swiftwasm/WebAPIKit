
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class AbortSignal: EventTarget {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.AbortSignal.function! }

    public required init(objectRef: JSObjectRef) {
        _aborted = ReadonlyAttribute(objectRef: objectRef, name: "aborted")
        _onabort = OptionalClosureHandler(objectRef: objectRef, name: "onabort")
        super.init(objectRef: objectRef)
    }

    @ReadonlyAttribute
    public var aborted: Bool

    @OptionalClosureHandler
    public var onabort: EventHandler
}
