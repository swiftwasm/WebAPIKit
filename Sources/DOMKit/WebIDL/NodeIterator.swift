// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NodeIterator: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.NodeIterator.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _root = ReadonlyAttribute(jsObject: jsObject, name: Strings.root)
        _referenceNode = ReadonlyAttribute(jsObject: jsObject, name: Strings.referenceNode)
        _pointerBeforeReferenceNode = ReadonlyAttribute(jsObject: jsObject, name: Strings.pointerBeforeReferenceNode)
        _whatToShow = ReadonlyAttribute(jsObject: jsObject, name: Strings.whatToShow)
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

    // XXX: member 'filter' is ignored

    public func nextNode() -> Node? {
        jsObject[Strings.nextNode]!().fromJSValue()!
    }

    public func previousNode() -> Node? {
        jsObject[Strings.previousNode]!().fromJSValue()!
    }

    public func detach() {
        _ = jsObject[Strings.detach]!()
    }
}
