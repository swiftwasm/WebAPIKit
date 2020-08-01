
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class XPathExpression: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathExpression.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func evaluate(contextNode: Node, type: UInt16 = 0, result: XPathResult? = nil) -> XPathResult {
        return objectRef.evaluate!(contextNode.jsValue(), type.jsValue(), result.jsValue()).fromJSValue()
    }
}
