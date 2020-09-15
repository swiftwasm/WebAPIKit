
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class EventTarget: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.EventTarget.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(withCompatibleObject: EventTarget.constructor.new())
    }

    public func addEventListener<EventListenerType: EventListener>(type: String, callback: EventListenerType?, options: AddEventListenerOptionsOrBool = [:]) -> Void {
        _ = jsObject.addEventListener!(type.jsValue(), callback.jsValue(), options.jsValue())
    }

    public func addEventListener(type: String, callback: ((Event) -> Void)?, options: AddEventListenerOptionsOrBool = [:]) {
        _ = jsObject.addEventListener!(type.jsValue(), callback == nil ? nil : JSClosure { callback!($0[0].fromJSValue()!) }, options.jsValue())
    }

    public func removeEventListener<EventListenerType: EventListener>(type: String, callback: EventListenerType?, options: EventListenerOptionsOrBool = [:]) -> Void {
        _ = jsObject.removeEventListener!(type.jsValue(), callback.jsValue(), options.jsValue())
    }

    public func removeEventListener(type: String, callback: ((Event) -> Void)?, options: EventListenerOptionsOrBool = [:]) {
        _ = jsObject.removeEventListener!(type.jsValue(), callback == nil ? nil : JSClosure { callback!($0[0].fromJSValue()!) }, options.jsValue())
    }

    public func dispatchEvent(event: Event) -> Bool {
        return jsObject.dispatchEvent!(event.jsValue()).fromJSValue()!
    }
}
