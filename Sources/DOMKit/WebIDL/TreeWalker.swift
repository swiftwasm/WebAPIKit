
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class TreeWalker: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.TreeWalker.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _root = ReadonlyAttribute(jsObject: jsObject, name: "root")
        _whatToShow = ReadonlyAttribute(jsObject: jsObject, name: "whatToShow")
        _currentNode = ReadWriteAttribute(jsObject: jsObject, name: "currentNode")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var root: Node

    @ReadonlyAttribute
    public var whatToShow: UInt32

    public var filter: NodeFilter? {
        return jsObject.filter.fromJSValue()! as AnyNodeFilter?
    }

    @ReadWriteAttribute
    public var currentNode: Node

    public func parentNode() -> Node? {
        return jsObject.parentNode!().fromJSValue()!
    }

    public func firstChild() -> Node? {
        return jsObject.firstChild!().fromJSValue()!
    }

    public func lastChild() -> Node? {
        return jsObject.lastChild!().fromJSValue()!
    }

    public func previousSibling() -> Node? {
        return jsObject.previousSibling!().fromJSValue()!
    }

    public func nextSibling() -> Node? {
        return jsObject.nextSibling!().fromJSValue()!
    }

    public func previousNode() -> Node? {
        return jsObject.previousNode!().fromJSValue()!
    }

    public func nextNode() -> Node? {
        return jsObject.nextNode!().fromJSValue()!
    }
}
