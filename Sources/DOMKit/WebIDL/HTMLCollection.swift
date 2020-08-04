
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class HTMLCollection: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.HTMLCollection.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    public subscript(_: String) -> Element?? {
        return objectRef.name.fromJSValue()
    }

    @ReadonlyAttribute
    public var length: UInt32
}
