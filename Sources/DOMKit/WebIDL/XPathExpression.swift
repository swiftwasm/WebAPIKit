
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class XPathExpression: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.XPathExpression.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func evaluate(contextNode: Node, type: UInt16 = 0, result: XPathResult? = nil) -> XPathResult {
        return jsObject.evaluate!(contextNode.jsValue(), type.jsValue(), result.jsValue()).fromJSValue()!
    }
}
