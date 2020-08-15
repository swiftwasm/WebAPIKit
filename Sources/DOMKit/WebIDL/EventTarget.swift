
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class EventTarget: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.EventTarget.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init() {
        self.init(withCompatibleObject: EventTarget.classRef.new())
    }

    public func addEventListener<EventListenerType: EventListener>(type: String, callback: EventListenerType?, options: AddEventListenerOptionsOrBool = [:]) -> Void {
        _ = objectRef.addEventListener!(type.jsValue(), callback.jsValue(), options.jsValue())
    }

    public func addEventListener(type: String, callback: ((Event) -> Void)?, options: AddEventListenerOptionsOrBool = [:]) {
        _ = objectRef.addEventListener!(type.jsValue(), callback == nil ? nil : JSClosure { callback!($0[0].fromJSValue()!) }, options.jsValue())
    }

    public func removeEventListener<EventListenerType: EventListener>(type: String, callback: EventListenerType?, options: EventListenerOptionsOrBool = [:]) -> Void {
        _ = objectRef.removeEventListener!(type.jsValue(), callback.jsValue(), options.jsValue())
    }

    public func removeEventListener(type: String, callback: ((Event) -> Void)?, options: EventListenerOptionsOrBool = [:]) {
        _ = objectRef.removeEventListener!(type.jsValue(), callback == nil ? nil : JSClosure { callback!($0[0].fromJSValue()!) }, options.jsValue())
    }

    public func dispatchEvent(event: Event) -> Bool {
        return objectRef.dispatchEvent!(event.jsValue()).fromJSValue()!
    }
}
