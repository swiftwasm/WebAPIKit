// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WorkletAnimationEffect: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.WorkletAnimationEffect].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _localTime = ReadWriteAttribute(jsObject: jsObject, name: Strings.localTime)
        self.jsObject = jsObject
    }

    @inlinable public func getTiming() -> EffectTiming {
        let this = jsObject
        return this[Strings.getTiming].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getComputedTiming() -> ComputedEffectTiming {
        let this = jsObject
        return this[Strings.getComputedTiming].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadWriteAttribute
    public var localTime: Double?
}
