
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class XPathExpression: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathExpression.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func evaluate(contextNode: Node, type: UInt16 = 0, result: XPathResult? = nil) -> XPathResult {
        return objectRef.evaluate!(JSValue(from: contextNode), JSValue(from: type), JSValue(from: result)).fromJSValue()
    }
}
