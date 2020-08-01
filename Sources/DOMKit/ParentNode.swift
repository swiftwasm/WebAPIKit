
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol ParentNode: JSBridgedType {}

public extension ParentNode {
    var children: HTMLCollection {
        return objectRef.children.fromJSValue()
    }

    var firstElementChild: Element? {
        return objectRef.firstElementChild.fromJSValue()
    }

    var lastElementChild: Element? {
        return objectRef.lastElementChild.fromJSValue()
    }

    var childElementCount: UInt32 {
        return objectRef.childElementCount.fromJSValue()
    }

    func prepend(nodes: NodeOrString...) {
        _ = objectRef.prepend!(nodes.jsValue())
    }

    func prepend() {
        _ = objectRef.prepend!()
    }

    func append(nodes: NodeOrString...) {
        _ = objectRef.append!(nodes.jsValue())
    }

    func append() {
        _ = objectRef.append!()
    }

    func querySelector(selectors: String) -> Element? {
        return objectRef.querySelector!(selectors.jsValue()).fromJSValue()
    }

    func querySelectorAll(selectors: String) -> NodeList {
        return objectRef.querySelectorAll!(selectors.jsValue()).fromJSValue()
    }
}
