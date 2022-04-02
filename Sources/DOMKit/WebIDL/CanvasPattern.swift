// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CanvasPattern: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.CanvasPattern].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func setTransform(transform: DOMMatrix2DInit? = nil) {
        _ = jsObject[Strings.setTransform]!(transform?.jsValue() ?? .undefined)
    }
}
