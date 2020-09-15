
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class AbortController: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.AbortController.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _signal = ReadonlyAttribute(jsObject: jsObject, name: "signal")
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(withCompatibleObject: AbortController.constructor.new())
    }

    @ReadonlyAttribute
    public var signal: AbortSignal

    public func abort() {
        _ = jsObject.abort!()
    }
}
