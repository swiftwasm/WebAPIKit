// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRTransientInputHitTestSource: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XRTransientInputHitTestSource].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func cancel() {
        let this = jsObject
        _ = this[Strings.cancel].function!(this: this, arguments: [])
    }
}
