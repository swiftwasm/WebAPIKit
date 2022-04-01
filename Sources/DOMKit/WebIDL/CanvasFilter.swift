// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CanvasFilter: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.CanvasFilter.function! }

    private enum Keys {}

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(filters: __UNSUPPORTED_UNION__? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(filters?.jsValue() ?? .undefined))
    }
}
