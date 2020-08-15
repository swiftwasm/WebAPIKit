
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class XPathExpression: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathExpression.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func evaluate(contextNode: Node, type: UInt16 = 0, result: XPathResult? = nil) -> XPathResult {
        return objectRef.evaluate!(contextNode.jsValue(), type.jsValue(), result.jsValue()).fromJSValue()!
    }
}
