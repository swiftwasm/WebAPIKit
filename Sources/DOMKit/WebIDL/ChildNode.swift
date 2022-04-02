// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public protocol ChildNode: JSBridgedClass {}
public extension ChildNode {
    @inlinable func before(nodes: Node_or_String...) {
        let this = jsObject
        _ = this[Strings.before].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    @inlinable func after(nodes: Node_or_String...) {
        let this = jsObject
        _ = this[Strings.after].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    @inlinable func replaceWith(nodes: Node_or_String...) {
        let this = jsObject
        _ = this[Strings.replaceWith].function!(this: this, arguments: nodes.map { $0.jsValue() })
    }

    @inlinable func remove() {
        let this = jsObject
        _ = this[Strings.remove].function!(this: this, arguments: [])
    }
}
