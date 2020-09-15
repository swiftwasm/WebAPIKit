
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol ParentNode: JSBridgedClass {}

public extension ParentNode {
    var children: HTMLCollection {
        return jsObject.children.fromJSValue()!
    }

    var firstElementChild: Element? {
        return jsObject.firstElementChild.fromJSValue()!
    }

    var lastElementChild: Element? {
        return jsObject.lastElementChild.fromJSValue()!
    }

    var childElementCount: UInt32 {
        return jsObject.childElementCount.fromJSValue()!
    }

    func prepend(nodes: NodeOrString...) {
        _ = jsObject.prepend!(nodes.jsValue())
    }

    func prepend() {
        _ = jsObject.prepend!()
    }

    func append(nodes: NodeOrString...) {
        _ = jsObject.append!(nodes.jsValue())
    }

    func append() {
        _ = jsObject.append!()
    }

    func querySelector(selectors: String) -> Element? {
        return jsObject.querySelector!(selectors.jsValue()).fromJSValue()!
    }

    func querySelectorAll(selectors: String) -> NodeList {
        return jsObject.querySelectorAll!(selectors.jsValue()).fromJSValue()!
    }
}
