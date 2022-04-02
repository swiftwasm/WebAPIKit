// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NodeIterator: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.NodeIterator.function! }

    private enum Keys {
        static let detach: JSString = "detach"
        static let filter: JSString = "filter"
        static let nextNode: JSString = "nextNode"
        static let pointerBeforeReferenceNode: JSString = "pointerBeforeReferenceNode"
        static let previousNode: JSString = "previousNode"
        static let referenceNode: JSString = "referenceNode"
        static let root: JSString = "root"
        static let whatToShow: JSString = "whatToShow"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _root = ReadonlyAttribute(jsObject: jsObject, name: Keys.root)
        _referenceNode = ReadonlyAttribute(jsObject: jsObject, name: Keys.referenceNode)
        _pointerBeforeReferenceNode = ReadonlyAttribute(jsObject: jsObject, name: Keys.pointerBeforeReferenceNode)
        _whatToShow = ReadonlyAttribute(jsObject: jsObject, name: Keys.whatToShow)
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
        jsObject[Keys.nextNode]!().fromJSValue()!
    }

    public func previousNode() -> Node? {
        jsObject[Keys.previousNode]!().fromJSValue()!
    }

    public func detach() {
        _ = jsObject[Keys.detach]!()
    }
}
