
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public protocol ChildNode: JSBridgedType {}

public extension ChildNode {
    func before(nodes: NodeOrString...) {
        _ = objectRef.before!(nodes.jsValue())
    }

    func before() {
        _ = objectRef.before!()
    }

    func after(nodes: NodeOrString...) {
        _ = objectRef.after!(nodes.jsValue())
    }

    func after() {
        _ = objectRef.after!()
    }

    func replaceWith(nodes: NodeOrString...) {
        _ = objectRef.replaceWith!(nodes.jsValue())
    }

    func replaceWith() {
        _ = objectRef.replaceWith!()
    }

    func remove() {
        _ = objectRef.remove!()
    }
}
