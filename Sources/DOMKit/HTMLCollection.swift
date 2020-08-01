
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class HTMLCollection: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLCollection.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    public subscript(name: String) -> Element?? {
        return objectRef[dynamicMember: name].fromJSValue()
    }

    @ReadonlyAttribute
    public var length: UInt32
}
