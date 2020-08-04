
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class AbortController: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.AbortController.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _signal = ReadonlyAttribute(objectRef: objectRef, name: "signal")
        self.objectRef = objectRef
    }

    public convenience init() {
        self.init(objectRef: AbortController.classRef(.new))
    }

    @ReadonlyAttribute
    public var signal: AbortSignal

    public func abort() {
        _ = objectRef.abort!()
    }
}
