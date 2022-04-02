// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WorkletAnimationEffect: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.WorkletAnimationEffect].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _localTime = ReadWriteAttribute(jsObject: jsObject, name: Strings.localTime)
        self.jsObject = jsObject
    }

    public func getTiming() -> EffectTiming {
        jsObject[Strings.getTiming]!().fromJSValue()!
    }

    public func getComputedTiming() -> ComputedEffectTiming {
        jsObject[Strings.getComputedTiming]!().fromJSValue()!
    }

    @ReadWriteAttribute
    public var localTime: Double?
}
