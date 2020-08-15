
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DOMStringMap: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.DOMStringMap.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public subscript(_: String) -> String? {
        get {
            return objectRef.name.fromJSValue()!
        }
        set {
            objectRef.name = newValue.jsValue()
        }
    }
}
