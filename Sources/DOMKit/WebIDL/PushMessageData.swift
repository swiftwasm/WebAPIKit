// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PushMessageData: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.PushMessageData].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func arrayBuffer() -> ArrayBuffer {
        jsObject[Strings.arrayBuffer]!().fromJSValue()!
    }

    public func blob() -> Blob {
        jsObject[Strings.blob]!().fromJSValue()!
    }

    public func json() -> JSValue {
        jsObject[Strings.json]!().fromJSValue()!
    }

    public func text() -> String {
        jsObject[Strings.text]!().fromJSValue()!
    }
}