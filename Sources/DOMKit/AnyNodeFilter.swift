
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyNodeFilter: JSBridgedType, NodeFilter {
    let objectRef: JSObjectRef

    required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func acceptNode(node: Node) -> UInt16 {
        return objectRef.acceptNode!(node.jsValue()).fromJSValue()
    }
}
