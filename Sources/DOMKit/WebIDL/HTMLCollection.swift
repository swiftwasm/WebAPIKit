
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class HTMLCollection: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLCollection.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    public subscript(_: String) -> Element?? {
        return objectRef.name.fromJSValue()!
    }

    @ReadonlyAttribute
    public var length: UInt32
}
