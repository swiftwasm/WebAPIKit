// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PushMessageData: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.PushMessageData].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public func arrayBuffer() -> ArrayBuffer {
        let this = jsObject
        return this[Strings.arrayBuffer].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func blob() -> Blob {
        let this = jsObject
        return this[Strings.blob].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func json() -> JSValue {
        let this = jsObject
        return this[Strings.json].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func text() -> String {
        let this = jsObject
        return this[Strings.text].function!(this: this, arguments: []).fromJSValue()!
    }
}
