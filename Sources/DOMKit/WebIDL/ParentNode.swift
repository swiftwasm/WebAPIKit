
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol ParentNode: JSAbstractBridgedType {}

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
        _ = objectRef.prepend!(JSValue(from: nodes))
    }

    func prepend() {
        _ = objectRef.prepend!()
    }

    func append(nodes: NodeOrString...) {
        _ = objectRef.append!(JSValue(from: nodes))
    }

    func append() {
        _ = objectRef.append!()
    }

    func querySelector(selectors: String) -> Element? {
        return objectRef.querySelector!(JSValue(from: selectors)).fromJSValue()
    }

    func querySelectorAll(selectors: String) -> NodeList {
        return objectRef.querySelectorAll!(JSValue(from: selectors)).fromJSValue()
    }
}
