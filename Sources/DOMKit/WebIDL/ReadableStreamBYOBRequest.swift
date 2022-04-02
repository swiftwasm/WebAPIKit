// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ReadableStreamBYOBRequest: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.ReadableStreamBYOBRequest].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _view = ReadonlyAttribute(jsObject: jsObject, name: Strings.view)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var view: ArrayBufferView?

    @inlinable public func respond(bytesWritten: UInt64) {
        let this = jsObject
        _ = this[Strings.respond].function!(this: this, arguments: [bytesWritten.jsValue()])
    }

    @inlinable public func respondWithNewView(view: ArrayBufferView) {
        let this = jsObject
        _ = this[Strings.respondWithNewView].function!(this: this, arguments: [view.jsValue()])
    }
}
