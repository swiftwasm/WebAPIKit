// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AbortController: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.AbortController].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _signal = ReadonlyAttribute(jsObject: jsObject, name: Strings.signal)
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @ReadonlyAttribute
    public var signal: AbortSignal

    public func abort(reason: JSValue? = nil) {
        let this = jsObject
        _ = this[Strings.abort].function!(this: this, arguments: [reason?.jsValue() ?? .undefined])
    }
}
