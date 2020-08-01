
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DOMStringMap: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.DOMStringMap.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public subscript(name: String) -> String? {
        get {
            return objectRef[dynamicMember: name].fromJSValue()
        }
        set {
            objectRef[dynamicMember: name] = newValue.jsValue()
        }
    }
}
