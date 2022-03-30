// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TransformStreamDefaultController: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.TransformStreamDefaultController.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _desiredSize = ReadonlyAttribute(jsObject: jsObject, name: "desiredSize")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var desiredSize: Double?

    public func enqueue(chunk: JSValue? = nil) {
        _ = jsObject["enqueue"]!(chunk?.jsValue() ?? .undefined)
    }

    public func error(reason: JSValue? = nil) {
        _ = jsObject["error"]!(reason?.jsValue() ?? .undefined)
    }

    public func terminate() {
        _ = jsObject["terminate"]!()
    }
}
