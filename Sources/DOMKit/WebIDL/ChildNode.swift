// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol ChildNode: JSBridgedClass {}
public extension ChildNode {
    func before(nodes: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.before].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    func after(nodes: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.after].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    func replaceWith(nodes: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.replaceWith].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    func remove() {
        let this = jsObject
        _ = this[Strings.remove].function!(this: this, arguments: [])
    }
}
