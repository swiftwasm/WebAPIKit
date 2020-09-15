
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Event: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.Event.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: "type")
        _target = ReadonlyAttribute(jsObject: jsObject, name: "target")
        _srcElement = ReadonlyAttribute(jsObject: jsObject, name: "srcElement")
        _currentTarget = ReadonlyAttribute(jsObject: jsObject, name: "currentTarget")
        _eventPhase = ReadonlyAttribute(jsObject: jsObject, name: "eventPhase")
        _cancelBubble = ReadWriteAttribute(jsObject: jsObject, name: "cancelBubble")
        _bubbles = ReadonlyAttribute(jsObject: jsObject, name: "bubbles")
        _cancelable = ReadonlyAttribute(jsObject: jsObject, name: "cancelable")
        _returnValue = ReadWriteAttribute(jsObject: jsObject, name: "returnValue")
        _defaultPrevented = ReadonlyAttribute(jsObject: jsObject, name: "defaultPrevented")
        _composed = ReadonlyAttribute(jsObject: jsObject, name: "composed")
        _isTrusted = ReadonlyAttribute(jsObject: jsObject, name: "isTrusted")
        _timeStamp = ReadonlyAttribute(jsObject: jsObject, name: "timeStamp")
        self.jsObject = jsObject
    }

    public convenience init(type: String, eventInitDict: EventInit = [:]) {
        self.init(withCompatibleObject: Event.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var type: String

    @ReadonlyAttribute
    public var target: EventTarget?

    @ReadonlyAttribute
    public var srcElement: EventTarget?

    @ReadonlyAttribute
    public var currentTarget: EventTarget?

    public func composedPath() -> [EventTarget] {
        return jsObject.composedPath!().fromJSValue()!
    }

    public let NONE: UInt16 = 0

    public let CAPTURING_PHASE: UInt16 = 1

    public let AT_TARGET: UInt16 = 2

    public let BUBBLING_PHASE: UInt16 = 3

    @ReadonlyAttribute
    public var eventPhase: UInt16

    public func stopPropagation() {
        _ = jsObject.stopPropagation!()
    }

    @ReadWriteAttribute
    public var cancelBubble: Bool

    public func stopImmediatePropagation() {
        _ = jsObject.stopImmediatePropagation!()
    }

    @ReadonlyAttribute
    public var bubbles: Bool

    @ReadonlyAttribute
    public var cancelable: Bool

    @ReadWriteAttribute
    public var returnValue: Bool

    public func preventDefault() {
        _ = jsObject.preventDefault!()
    }

    @ReadonlyAttribute
    public var defaultPrevented: Bool

    @ReadonlyAttribute
    public var composed: Bool

    @ReadonlyAttribute
    public var isTrusted: Bool

    @ReadonlyAttribute
    public var timeStamp: DOMHighResTimeStamp

    public func initEvent(type: String, bubbles: Bool = false, cancelable: Bool = false) {
        _ = jsObject.initEvent!(type.jsValue(), bubbles.jsValue(), cancelable.jsValue())
    }
}
