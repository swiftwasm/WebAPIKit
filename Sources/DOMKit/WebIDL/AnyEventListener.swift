
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyEventListener: JSBridgedClass, EventListener {
    public class var constructor: JSFunction { JSObject.global.EventListener.function! }

    let jsObject: JSObject

    required init(withCompatibleObject jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func handleEvent(event: Event) {
        _ = jsObject.handleEvent!(event.jsValue())
    }
}
