
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class Node: EventTarget {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Node.function! }

    public required init(objectRef: JSObjectRef) {
        _nodeType = ReadonlyAttribute(objectRef: objectRef, name: "nodeType")
        _nodeName = ReadonlyAttribute(objectRef: objectRef, name: "nodeName")
        _baseURI = ReadonlyAttribute(objectRef: objectRef, name: "baseURI")
        _isConnected = ReadonlyAttribute(objectRef: objectRef, name: "isConnected")
        _ownerDocument = ReadonlyAttribute(objectRef: objectRef, name: "ownerDocument")
        _parentNode = ReadonlyAttribute(objectRef: objectRef, name: "parentNode")
        _parentElement = ReadonlyAttribute(objectRef: objectRef, name: "parentElement")
        _childNodes = ReadonlyAttribute(objectRef: objectRef, name: "childNodes")
        _firstChild = ReadonlyAttribute(objectRef: objectRef, name: "firstChild")
        _lastChild = ReadonlyAttribute(objectRef: objectRef, name: "lastChild")
        _previousSibling = ReadonlyAttribute(objectRef: objectRef, name: "previousSibling")
        _nextSibling = ReadonlyAttribute(objectRef: objectRef, name: "nextSibling")
        _nodeValue = ReadWriteAttribute(objectRef: objectRef, name: "nodeValue")
        _textContent = ReadWriteAttribute(objectRef: objectRef, name: "textContent")
        super.init(objectRef: objectRef)
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
        return objectRef.getRootNode!(JSValue(from: options)).fromJSValue()
    }

    @ReadonlyAttribute
    public var parentNode: Node?

    @ReadonlyAttribute
    public var parentElement: Element?

    public func hasChildNodes() -> Bool {
        return objectRef.hasChildNodes!().fromJSValue()
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
        _ = objectRef.normalize!()
    }

    public func cloneNode(deep: Bool = false) -> Node {
        return objectRef.cloneNode!(JSValue(from: deep)).fromJSValue()
    }

    public func isEqualNode(otherNode: Node?) -> Bool {
        return objectRef.isEqualNode!(JSValue(from: otherNode)).fromJSValue()
    }

    public func isSameNode(otherNode: Node?) -> Bool {
        return objectRef.isSameNode!(JSValue(from: otherNode)).fromJSValue()
    }

    public let DOCUMENT_POSITION_DISCONNECTED: UInt16 = 1

    public let DOCUMENT_POSITION_PRECEDING: UInt16 = 2

    public let DOCUMENT_POSITION_FOLLOWING: UInt16 = 4

    public let DOCUMENT_POSITION_CONTAINS: UInt16 = 8

    public let DOCUMENT_POSITION_CONTAINED_BY: UInt16 = 16

    public let DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: UInt16 = 32

    public func compareDocumentPosition(other: Node) -> UInt16 {
        return objectRef.compareDocumentPosition!(JSValue(from: other)).fromJSValue()
    }

    public func contains(other: Node?) -> Bool {
        return objectRef.contains!(JSValue(from: other)).fromJSValue()
    }

    public func lookupPrefix(namespace: String?) -> String? {
        return objectRef.lookupPrefix!(JSValue(from: namespace)).fromJSValue()
    }

    public func lookupNamespaceURI(prefix: String?) -> String? {
        return objectRef.lookupNamespaceURI!(JSValue(from: prefix)).fromJSValue()
    }

    public func isDefaultNamespace(namespace: String?) -> Bool {
        return objectRef.isDefaultNamespace!(JSValue(from: namespace)).fromJSValue()
    }

    public func insertBefore(node: Node, child: Node?) -> Node {
        return objectRef.insertBefore!(JSValue(from: node), JSValue(from: child)).fromJSValue()
    }

    public func appendChild(node: Node) -> Node {
        return objectRef.appendChild!(JSValue(from: node)).fromJSValue()
    }

    public func replaceChild(node: Node, child: Node) -> Node {
        return objectRef.replaceChild!(JSValue(from: node), JSValue(from: child)).fromJSValue()
    }

    public func removeChild(child: Node) -> Node {
        return objectRef.removeChild!(JSValue(from: child)).fromJSValue()
    }
}
