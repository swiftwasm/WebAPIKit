// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TransformStreamDefaultController: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.TransformStreamDefaultController.function! }

    private enum Keys {
        static let terminate: JSString = "terminate"
        static let desiredSize: JSString = "desiredSize"
        static let enqueue: JSString = "enqueue"
        static let error: JSString = "error"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _desiredSize = ReadonlyAttribute(jsObject: jsObject, name: Keys.desiredSize)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var desiredSize: Double?

    public func enqueue(chunk: JSValue? = nil) {
        _ = jsObject[Keys.enqueue]!(chunk?.jsValue() ?? .undefined)
    }

    public func error(reason: JSValue? = nil) {
        _ = jsObject[Keys.error]!(reason?.jsValue() ?? .undefined)
    }

    public func terminate() {
        _ = jsObject[Keys.terminate]!()
    }
}
