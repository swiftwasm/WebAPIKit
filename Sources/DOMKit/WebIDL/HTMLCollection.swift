
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLCollection: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.HTMLCollection.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        self.jsObject = jsObject
    }

    public subscript(_: String) -> Element?? {
        return jsObject.name.fromJSValue()!
    }

    @ReadonlyAttribute
    public var length: UInt32
}
