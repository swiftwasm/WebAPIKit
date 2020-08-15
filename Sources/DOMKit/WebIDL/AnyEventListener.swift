
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyEventListener: JSBridgedClass, EventListener {
    public class var classRef: JSFunctionRef { JSObjectRef.global.EventListener.function! }

    let objectRef: JSObjectRef

    required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func handleEvent(event: Event) {
        _ = objectRef.handleEvent!(event.jsValue())
    }
}
