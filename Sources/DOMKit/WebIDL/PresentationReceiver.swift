// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PresentationReceiver: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.PresentationReceiver].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _connectionList = ReadonlyAttribute(jsObject: jsObject, name: Strings.connectionList)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var connectionList: JSPromise
}