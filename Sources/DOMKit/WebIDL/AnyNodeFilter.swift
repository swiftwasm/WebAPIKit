
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyNodeFilter: JSBridgedClass, NodeFilter {
    public class var classRef: JSFunctionRef { JSObjectRef.global.NodeFilter.function! }

    let objectRef: JSObjectRef

    required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func acceptNode(node: Node) -> UInt16 {
        return objectRef.acceptNode!(node.jsValue()).fromJSValue()!
    }
}
