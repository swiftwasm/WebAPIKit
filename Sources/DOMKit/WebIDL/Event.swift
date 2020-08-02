
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Event: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.Event.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _type = ReadonlyAttribute(objectRef: objectRef, name: "type")
        _target = ReadonlyAttribute(objectRef: objectRef, name: "target")
        _srcElement = ReadonlyAttribute(objectRef: objectRef, name: "srcElement")
        _currentTarget = ReadonlyAttribute(objectRef: objectRef, name: "currentTarget")
        _eventPhase = ReadonlyAttribute(objectRef: objectRef, name: "eventPhase")
        _cancelBubble = ReadWriteAttribute(objectRef: objectRef, name: "cancelBubble")
        _bubbles = ReadonlyAttribute(objectRef: objectRef, name: "bubbles")
        _cancelable = ReadonlyAttribute(objectRef: objectRef, name: "cancelable")
        _returnValue = ReadWriteAttribute(objectRef: objectRef, name: "returnValue")
        _defaultPrevented = ReadonlyAttribute(objectRef: objectRef, name: "defaultPrevented")
        _composed = ReadonlyAttribute(objectRef: objectRef, name: "composed")
        _isTrusted = ReadonlyAttribute(objectRef: objectRef, name: "isTrusted")
        _timeStamp = ReadonlyAttribute(objectRef: objectRef, name: "timeStamp")
        self.objectRef = objectRef
    }

    public convenience init(type: String, eventInitDict: EventInit = [:]) {
        self.init(objectRef: Event.classRef.new(type.jsValue(), eventInitDict.jsValue()))
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
        return objectRef.composedPath!().fromJSValue()
    }

    public let NONE: UInt16 = 0

    public let CAPTURING_PHASE: UInt16 = 1

    public let AT_TARGET: UInt16 = 2

    public let BUBBLING_PHASE: UInt16 = 3

    @ReadonlyAttribute
    public var eventPhase: UInt16

    public func stopPropagation() {
        _ = objectRef.stopPropagation!()
    }

    @ReadWriteAttribute
    public var cancelBubble: Bool

    public func stopImmediatePropagation() {
        _ = objectRef.stopImmediatePropagation!()
    }

    @ReadonlyAttribute
    public var bubbles: Bool

    @ReadonlyAttribute
    public var cancelable: Bool

    @ReadWriteAttribute
    public var returnValue: Bool

    public func preventDefault() {
        _ = objectRef.preventDefault!()
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
        _ = objectRef.initEvent!(type.jsValue(), bubbles.jsValue(), cancelable.jsValue())
    }
}
