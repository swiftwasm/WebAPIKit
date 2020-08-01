
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

class AnyEventListener: JSBridgedType, EventListener {
    let objectRef: JSObjectRef

    required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func handleEvent(event: Event) {
        _ = objectRef.handleEvent!(event.jsValue())
    }
}
