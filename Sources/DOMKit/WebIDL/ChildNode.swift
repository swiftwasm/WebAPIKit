
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public protocol ChildNode: JSAbstractBridgedType {}

public extension ChildNode {
    func before(nodes: NodeOrString...) {
        _ = objectRef.before!(JSValue(from: nodes))
    }

    func before() {
        _ = objectRef.before!()
    }

    func after(nodes: NodeOrString...) {
        _ = objectRef.after!(JSValue(from: nodes))
    }

    func after() {
        _ = objectRef.after!()
    }

    func replaceWith(nodes: NodeOrString...) {
        _ = objectRef.replaceWith!(JSValue(from: nodes))
    }

    func replaceWith() {
        _ = objectRef.replaceWith!()
    }

    func remove() {
        _ = objectRef.remove!()
    }
}
