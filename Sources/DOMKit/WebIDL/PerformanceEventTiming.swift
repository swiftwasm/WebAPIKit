// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PerformanceEventTiming: PerformanceEntry {
    override public class var constructor: JSFunction { JSObject.global[Strings.PerformanceEventTiming].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _processingStart = ReadonlyAttribute(jsObject: jsObject, name: Strings.processingStart)
        _processingEnd = ReadonlyAttribute(jsObject: jsObject, name: Strings.processingEnd)
        _cancelable = ReadonlyAttribute(jsObject: jsObject, name: Strings.cancelable)
        _target = ReadonlyAttribute(jsObject: jsObject, name: Strings.target)
        _interactionId = ReadonlyAttribute(jsObject: jsObject, name: Strings.interactionId)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var processingStart: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var processingEnd: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var cancelable: Bool

    @ReadonlyAttribute
    public var target: Node?

    @ReadonlyAttribute
    public var interactionId: UInt64

    override public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
