// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TransformStreamDefaultController: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.TransformStreamDefaultController].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _desiredSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.desiredSize)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var desiredSize: Double?

    @inlinable public func enqueue(chunk: JSValue? = nil) {
        let this = jsObject
        _ = this[Strings.enqueue].function!(this: this, arguments: [chunk?.jsValue ?? .undefined])
    }

    @inlinable public func error(reason: JSValue? = nil) {
        let this = jsObject
        _ = this[Strings.error].function!(this: this, arguments: [reason?.jsValue ?? .undefined])
    }

    @inlinable public func terminate() {
        let this = jsObject
        _ = this[Strings.terminate].function!(this: this, arguments: [])
    }
}