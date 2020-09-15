
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Node: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.Node.function! }

    public required init(withCompatibleObject jsObject: JSObject) {
        _nodeType = ReadonlyAttribute(jsObject: jsObject, name: "nodeType")
        _nodeName = ReadonlyAttribute(jsObject: jsObject, name: "nodeName")
        _baseURI = ReadonlyAttribute(jsObject: jsObject, name: "baseURI")
        _isConnected = ReadonlyAttribute(jsObject: jsObject, name: "isConnected")
        _ownerDocument = ReadonlyAttribute(jsObject: jsObject, name: "ownerDocument")
        _parentNode = ReadonlyAttribute(jsObject: jsObject, name: "parentNode")
        _parentElement = ReadonlyAttribute(jsObject: jsObject, name: "parentElement")
        _childNodes = ReadonlyAttribute(jsObject: jsObject, name: "childNodes")
        _firstChild = ReadonlyAttribute(jsObject: jsObject, name: "firstChild")
        _lastChild = ReadonlyAttribute(jsObject: jsObject, name: "lastChild")
        _previousSibling = ReadonlyAttribute(jsObject: jsObject, name: "previousSibling")
        _nextSibling = ReadonlyAttribute(jsObject: jsObject, name: "nextSibling")
        _nodeValue = ReadWriteAttribute(jsObject: jsObject, name: "nodeValue")
        _textContent = ReadWriteAttribute(jsObject: jsObject, name: "textContent")
        super.init(withCompatibleObject: jsObject)
    }

    public let ELEMENT_NODE: UInt16 = 1

    public let ATTRIBUTE_NODE: UInt16 = 2

    public let TEXT_NODE: UInt16 = 3

    public let CDATA_SECTION_NODE: UInt16 = 4

    public let ENTITY_REFERENCE_NODE: UInt16 = 5

    public let ENTITY_NODE: UInt16 = 6

    public let PROCESSING_INSTRUCTION_NODE: UInt16 = 7

    public let COMMENT_NODE: UInt16 = 8

    public let DOCUMENT_NODE: UInt16 = 9

    public let DOCUMENT_TYPE_NODE: UInt16 = 10

    public let DOCUMENT_FRAGMENT_NODE: UInt16 = 11

    public let NOTATION_NODE: UInt16 = 12

    @ReadonlyAttribute
    public var nodeType: UInt16

    @ReadonlyAttribute
    public var nodeName: String

    @ReadonlyAttribute
    public var baseURI: String

    @ReadonlyAttribute
    public var isConnected: Bool

    @ReadonlyAttribute
    public var ownerDocument: Document?

    public func getRootNode(options: GetRootNodeOptions = [:]) -> Node {
        return jsObject.getRootNode!(options.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var parentNode: Node?

    @ReadonlyAttribute
    public var parentElement: Element?

    public func hasChildNodes() -> Bool {
        return jsObject.hasChildNodes!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var childNodes: NodeList

    @ReadonlyAttribute
    public var firstChild: Node?

    @ReadonlyAttribute
    public var lastChild: Node?

    @ReadonlyAttribute
    public var previousSibling: Node?

    @ReadonlyAttribute
    public var nextSibling: Node?

    @ReadWriteAttribute
    public var nodeValue: String?

    @ReadWriteAttribute
    public var textContent: String?

    public func normalize() {
        _ = jsObject.normalize!()
    }

    public func cloneNode(deep: Bool = false) -> Node {
        return jsObject.cloneNode!(deep.jsValue()).fromJSValue()!
    }

    public func isEqualNode(otherNode: Node?) -> Bool {
        return jsObject.isEqualNode!(otherNode.jsValue()).fromJSValue()!
    }

    public func isSameNode(otherNode: Node?) -> Bool {
        return jsObject.isSameNode!(otherNode.jsValue()).fromJSValue()!
    }

    public let DOCUMENT_POSITION_DISCONNECTED: UInt16 = 1

    public let DOCUMENT_POSITION_PRECEDING: UInt16 = 2

    public let DOCUMENT_POSITION_FOLLOWING: UInt16 = 4

    public let DOCUMENT_POSITION_CONTAINS: UInt16 = 8

    public let DOCUMENT_POSITION_CONTAINED_BY: UInt16 = 16

    public let DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: UInt16 = 32

    public func compareDocumentPosition(other: Node) -> UInt16 {
        return jsObject.compareDocumentPosition!(other.jsValue()).fromJSValue()!
    }

    public func contains(other: Node?) -> Bool {
        return jsObject.contains!(other.jsValue()).fromJSValue()!
    }

    public func lookupPrefix(namespace: String?) -> String? {
        return jsObject.lookupPrefix!(namespace.jsValue()).fromJSValue()!
    }

    public func lookupNamespaceURI(prefix: String?) -> String? {
        return jsObject.lookupNamespaceURI!(prefix.jsValue()).fromJSValue()!
    }

    public func isDefaultNamespace(namespace: String?) -> Bool {
        return jsObject.isDefaultNamespace!(namespace.jsValue()).fromJSValue()!
    }

    public func insertBefore(node: Node, child: Node?) -> Node {
        return jsObject.insertBefore!(node.jsValue(), child.jsValue()).fromJSValue()!
    }

    public func appendChild(node: Node) -> Node {
        return jsObject.appendChild!(node.jsValue()).fromJSValue()!
    }

    public func replaceChild(node: Node, child: Node) -> Node {
        return jsObject.replaceChild!(node.jsValue(), child.jsValue()).fromJSValue()!
    }

    public func removeChild(child: Node) -> Node {
        return jsObject.removeChild!(child.jsValue()).fromJSValue()!
    }
}
