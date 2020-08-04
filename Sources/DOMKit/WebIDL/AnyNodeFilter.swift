
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

class AnyNodeFilter: JSBridgedType, NodeFilter {
    public class var classRef: JSFunctionRef { JSObjectRef.global.NodeFilter.function! }

    let objectRef: JSObjectRef

    required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func acceptNode(node: Node) -> UInt16 {
        return objectRef.acceptNode!(JSValue(from: node)).fromJSValue()
    }
}
