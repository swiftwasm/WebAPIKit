// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XPathExpression: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XPathExpression].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func evaluate(contextNode: Node, type: UInt16? = nil, result: XPathResult? = nil) -> XPathResult {
        let this = jsObject
        return this[Strings.evaluate].function!(this: this, arguments: [contextNode.jsValue(), type?.jsValue() ?? .undefined, result?.jsValue() ?? .undefined]).fromJSValue()!
    }
}
