// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PerformanceServerTiming: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.PerformanceServerTiming].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _duration = ReadonlyAttribute(jsObject: jsObject, name: Strings.duration)
        _description = ReadonlyAttribute(jsObject: jsObject, name: Strings.description)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var duration: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var description: String

    public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
