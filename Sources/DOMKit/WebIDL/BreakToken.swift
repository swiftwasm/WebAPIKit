// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BreakToken: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.BreakToken].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _childBreakTokens = ReadonlyAttribute(jsObject: jsObject, name: Strings.childBreakTokens)
        _data = ReadonlyAttribute(jsObject: jsObject, name: Strings.data)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var childBreakTokens: [ChildBreakToken]

    @ReadonlyAttribute
    public var data: JSValue
}
