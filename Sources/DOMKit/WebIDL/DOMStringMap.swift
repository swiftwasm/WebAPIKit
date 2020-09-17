
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DOMStringMap: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DOMStringMap.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public subscript(_: String) -> String? {
        get {
            return jsObject.name.fromJSValue()!
        }
        set {
            jsObject.name = newValue.jsValue()
        }
    }
}
