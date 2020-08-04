
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

class AnyEventListener: JSBridgedType, EventListener {
    public class var classRef: JSFunctionRef { JSObjectRef.global.EventListener.function! }

    let objectRef: JSObjectRef

    required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func handleEvent(event: Event) {
        _ = objectRef.handleEvent!(JSValue(from: event))
    }
}
