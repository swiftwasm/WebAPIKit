
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Window: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.Window.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _event = ReadonlyAttribute(objectRef: objectRef, name: "event")
        self.objectRef = objectRef
    }

    @ReadonlyAttribute
    public var event: AnyJSValueCodable
}
