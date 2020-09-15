
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public protocol ChildNode: JSBridgedClass {}

public extension ChildNode {
    func before(nodes: NodeOrString...) {
        _ = jsObject.before!(nodes.jsValue())
    }

    func before() {
        _ = jsObject.before!()
    }

    func after(nodes: NodeOrString...) {
        _ = jsObject.after!(nodes.jsValue())
    }

    func after() {
        _ = jsObject.after!()
    }

    func replaceWith(nodes: NodeOrString...) {
        _ = jsObject.replaceWith!(nodes.jsValue())
    }

    func replaceWith() {
        _ = jsObject.replaceWith!()
    }

    func remove() {
        _ = jsObject.remove!()
    }
}
