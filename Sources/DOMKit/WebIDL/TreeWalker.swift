
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class TreeWalker: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.TreeWalker.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _root = ReadonlyAttribute(objectRef: objectRef, name: "root")
        _whatToShow = ReadonlyAttribute(objectRef: objectRef, name: "whatToShow")
        _currentNode = ReadWriteAttribute(objectRef: objectRef, name: "currentNode")
        self.objectRef = objectRef
    }

    @ReadonlyAttribute
    public var root: Node

    @ReadonlyAttribute
    public var whatToShow: UInt32

    public var filter: NodeFilter? {
        return objectRef.filter.fromJSValue()! as AnyNodeFilter?
    }

    @ReadWriteAttribute
    public var currentNode: Node

    public func parentNode() -> Node? {
        return objectRef.parentNode!().fromJSValue()!
    }

    public func firstChild() -> Node? {
        return objectRef.firstChild!().fromJSValue()!
    }

    public func lastChild() -> Node? {
        return objectRef.lastChild!().fromJSValue()!
    }

    public func previousSibling() -> Node? {
        return objectRef.previousSibling!().fromJSValue()!
    }

    public func nextSibling() -> Node? {
        return objectRef.nextSibling!().fromJSValue()!
    }

    public func previousNode() -> Node? {
        return objectRef.previousNode!().fromJSValue()!
    }

    public func nextNode() -> Node? {
        return objectRef.nextNode!().fromJSValue()!
    }
}
