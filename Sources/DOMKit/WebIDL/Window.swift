
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Window: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.Window.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _event = ReadonlyAttribute(jsObject: jsObject, name: "event")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var event: AnyJSValueCodable
}
