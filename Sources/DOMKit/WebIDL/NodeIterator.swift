
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class NodeIterator: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.NodeIterator.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _root = ReadonlyAttribute(jsObject: jsObject, name: "root")
        _referenceNode = ReadonlyAttribute(jsObject: jsObject, name: "referenceNode")
        _pointerBeforeReferenceNode = ReadonlyAttribute(jsObject: jsObject, name: "pointerBeforeReferenceNode")
        _whatToShow = ReadonlyAttribute(jsObject: jsObject, name: "whatToShow")
        self.jsObject = jsObject
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
        return jsObject.filter.fromJSValue()! as AnyNodeFilter?
    }

    public func nextNode() -> Node? {
        return jsObject.nextNode!().fromJSValue()!
    }

    public func previousNode() -> Node? {
        return jsObject.previousNode!().fromJSValue()!
    }

    public func detach() {
        _ = jsObject.detach!()
    }
}
