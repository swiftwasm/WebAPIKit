// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRHitTestSource: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XRHitTestSource].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func cancel() {
        _ = jsObject[Strings.cancel]!()
    }
}
