// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol ChildNode: JSBridgedClass {}
public extension ChildNode {
    @inlinable func before(nodes: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.before].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    @inlinable func after(nodes: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.after].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    @inlinable func replaceWith(nodes: __UNSUPPORTED_UNION__...) {
        let this = jsObject
        _ = this[Strings.replaceWith].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    @inlinable func remove() {
        let this = jsObject
        _ = this[Strings.remove].function!(this: this, arguments: [])
    }
}
