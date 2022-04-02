// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Event: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.Event].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _target = ReadonlyAttribute(jsObject: jsObject, name: Strings.target)
        _srcElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.srcElement)
        _currentTarget = ReadonlyAttribute(jsObject: jsObject, name: Strings.currentTarget)
        _eventPhase = ReadonlyAttribute(jsObject: jsObject, name: Strings.eventPhase)
        _cancelBubble = ReadWriteAttribute(jsObject: jsObject, name: Strings.cancelBubble)
        _bubbles = ReadonlyAttribute(jsObject: jsObject, name: Strings.bubbles)
        _cancelable = ReadonlyAttribute(jsObject: jsObject, name: Strings.cancelable)
        _returnValue = ReadWriteAttribute(jsObject: jsObject, name: Strings.returnValue)
        _defaultPrevented = ReadonlyAttribute(jsObject: jsObject, name: Strings.defaultPrevented)
        _composed = ReadonlyAttribute(jsObject: jsObject, name: Strings.composed)
        _isTrusted = ReadonlyAttribute(jsObject: jsObject, name: Strings.isTrusted)
        _timeStamp = ReadonlyAttribute(jsObject: jsObject, name: Strings.timeStamp)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(type: String, eventInitDict: EventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), eventInitDict?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var type: String

    @ReadonlyAttribute
    public var target: EventTarget?

    @ReadonlyAttribute
    public var srcElement: EventTarget?

    @ReadonlyAttribute
    public var currentTarget: EventTarget?

    @inlinable public func composedPath() -> [EventTarget] {
        let this = jsObject
        return this[Strings.composedPath].function!(this: this, arguments: []).fromJSValue()!
    }

    public static let NONE: UInt16 = 0

    public static let CAPTURING_PHASE: UInt16 = 1

    public static let AT_TARGET: UInt16 = 2

    public static let BUBBLING_PHASE: UInt16 = 3

    @ReadonlyAttribute
    public var eventPhase: UInt16

    @inlinable public func stopPropagation() {
        let this = jsObject
        _ = this[Strings.stopPropagation].function!(this: this, arguments: [])
    }

    @ReadWriteAttribute
    public var cancelBubble: Bool

    @inlinable public func stopImmediatePropagation() {
        let this = jsObject
        _ = this[Strings.stopImmediatePropagation].function!(this: this, arguments: [])
    }

    @ReadonlyAttribute
    public var bubbles: Bool

    @ReadonlyAttribute
    public var cancelable: Bool

    @ReadWriteAttribute
    public var returnValue: Bool

    @inlinable public func preventDefault() {
        let this = jsObject
        _ = this[Strings.preventDefault].function!(this: this, arguments: [])
    }

    @ReadonlyAttribute
    public var defaultPrevented: Bool

    @ReadonlyAttribute
    public var composed: Bool

    @ReadonlyAttribute
    public var isTrusted: Bool

    @ReadonlyAttribute
    public var timeStamp: DOMHighResTimeStamp

    @inlinable public func initEvent(type: String, bubbles: Bool? = nil, cancelable: Bool? = nil) {
        let this = jsObject
        _ = this[Strings.initEvent].function!(this: this, arguments: [type.jsValue(), bubbles?.jsValue() ?? .undefined, cancelable?.jsValue() ?? .undefined])
    }
}
