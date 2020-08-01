
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class NodeIterator: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.NodeIterator.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _root = ReadonlyAttribute(objectRef: objectRef, name: "root")
        _referenceNode = ReadonlyAttribute(objectRef: objectRef, name: "referenceNode")
        _pointerBeforeReferenceNode = ReadonlyAttribute(objectRef: objectRef, name: "pointerBeforeReferenceNode")
        _whatToShow = ReadonlyAttribute(objectRef: objectRef, name: "whatToShow")
        self.objectRef = objectRef
    }

    @ReadonlyAttribute
    public var root: Node

    @ReadonlyAttribute
    public var referenceNode: Node

    @ReadonlyAttribute
    public var pointerBeforeReferenceNode: Bool

    @ReadonlyAttribute
    public var whatToShow: UInt32

    public var filter: NodeFilter? {
        return objectRef.filter.fromJSValue() as AnyNodeFilter?
    }

    public func nextNode() -> Node? {
        return objectRef.nextNode!().fromJSValue()
    }

    public func previousNode() -> Node? {
        return objectRef.previousNode!().fromJSValue()
    }

    public func detach() {
        _ = objectRef.detach!()
    }
}
