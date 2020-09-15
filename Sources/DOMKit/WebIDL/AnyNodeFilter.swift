
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyNodeFilter: JSBridgedClass, NodeFilter {
    public class var constructor: JSFunction { JSObject.global.NodeFilter.function! }

    let jsObject: JSObject

    required init(withCompatibleObject jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func acceptNode(node: Node) -> UInt16 {
        return jsObject.acceptNode!(node.jsValue()).fromJSValue()!
    }
}
