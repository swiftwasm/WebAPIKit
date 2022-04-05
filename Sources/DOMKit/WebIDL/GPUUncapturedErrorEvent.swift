// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUUncapturedErrorEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.GPUUncapturedErrorEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _error = ReadonlyAttribute(jsObject: jsObject, name: Strings.error)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, gpuUncapturedErrorEventInitDict: GPUUncapturedErrorEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue, gpuUncapturedErrorEventInitDict.jsValue]))
    }

    @ReadonlyAttribute
    public var error: GPUError
}
