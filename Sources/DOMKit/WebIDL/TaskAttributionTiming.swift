// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TaskAttributionTiming: PerformanceEntry {
    override public class var constructor: JSFunction { JSObject.global[Strings.TaskAttributionTiming].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _containerType = ReadonlyAttribute(jsObject: jsObject, name: Strings.containerType)
        _containerSrc = ReadonlyAttribute(jsObject: jsObject, name: Strings.containerSrc)
        _containerId = ReadonlyAttribute(jsObject: jsObject, name: Strings.containerId)
        _containerName = ReadonlyAttribute(jsObject: jsObject, name: Strings.containerName)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var containerType: String

    @ReadonlyAttribute
    public var containerSrc: String

    @ReadonlyAttribute
    public var containerId: String

    @ReadonlyAttribute
    public var containerName: String

    override public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
