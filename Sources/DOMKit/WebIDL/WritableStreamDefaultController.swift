// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WritableStreamDefaultController: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.WritableStreamDefaultController].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _signal = ReadonlyAttribute(jsObject: jsObject, name: Strings.signal)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var signal: AbortSignal

    @inlinable public func error(e: JSValue? = nil) {
        let this = jsObject
        _ = this[Strings.error].function!(this: this, arguments: [e?.jsValue ?? .undefined])
    }
}
