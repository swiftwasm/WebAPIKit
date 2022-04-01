// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Node: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.Node.function! }

    private enum Keys {
        static let ATTRIBUTE_NODE: JSString = "ATTRIBUTE_NODE"
        static let CDATA_SECTION_NODE: JSString = "CDATA_SECTION_NODE"
        static let COMMENT_NODE: JSString = "COMMENT_NODE"
        static let DOCUMENT_FRAGMENT_NODE: JSString = "DOCUMENT_FRAGMENT_NODE"
        static let DOCUMENT_NODE: JSString = "DOCUMENT_NODE"
        static let DOCUMENT_POSITION_CONTAINED_BY: JSString = "DOCUMENT_POSITION_CONTAINED_BY"
        static let DOCUMENT_POSITION_CONTAINS: JSString = "DOCUMENT_POSITION_CONTAINS"
        static let DOCUMENT_POSITION_DISCONNECTED: JSString = "DOCUMENT_POSITION_DISCONNECTED"
        static let DOCUMENT_POSITION_FOLLOWING: JSString = "DOCUMENT_POSITION_FOLLOWING"
        static let DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: JSString = "DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC"
        static let DOCUMENT_POSITION_PRECEDING: JSString = "DOCUMENT_POSITION_PRECEDING"
        static let DOCUMENT_TYPE_NODE: JSString = "DOCUMENT_TYPE_NODE"
        static let ELEMENT_NODE: JSString = "ELEMENT_NODE"
        static let ENTITY_NODE: JSString = "ENTITY_NODE"
        static let ENTITY_REFERENCE_NODE: JSString = "ENTITY_REFERENCE_NODE"
        static let NOTATION_NODE: JSString = "NOTATION_NODE"
        static let PROCESSING_INSTRUCTION_NODE: JSString = "PROCESSING_INSTRUCTION_NODE"
        static let TEXT_NODE: JSString = "TEXT_NODE"
        static let appendChild: JSString = "appendChild"
        static let baseURI: JSString = "baseURI"
        static let childNodes: JSString = "childNodes"
        static let cloneNode: JSString = "cloneNode"
        static let compareDocumentPosition: JSString = "compareDocumentPosition"
        static let contains: JSString = "contains"
        static let firstChild: JSString = "firstChild"
        static let getRootNode: JSString = "getRootNode"
        static let hasChildNodes: JSString = "hasChildNodes"
        static let insertBefore: JSString = "insertBefore"
        static let isConnected: JSString = "isConnected"
        static let isDefaultNamespace: JSString = "isDefaultNamespace"
        static let isEqualNode: JSString = "isEqualNode"
        static let isSameNode: JSString = "isSameNode"
        static let lastChild: JSString = "lastChild"
        static let lookupNamespaceURI: JSString = "lookupNamespaceURI"
        static let lookupPrefix: JSString = "lookupPrefix"
        static let nextSibling: JSString = "nextSibling"
        static let nodeName: JSString = "nodeName"
        static let nodeType: JSString = "nodeType"
        static let nodeValue: JSString = "nodeValue"
        static let normalize: JSString = "normalize"
        static let ownerDocument: JSString = "ownerDocument"
        static let parentElement: JSString = "parentElement"
        static let parentNode: JSString = "parentNode"
        static let previousSibling: JSString = "previousSibling"
        static let removeChild: JSString = "removeChild"
        static let replaceChild: JSString = "replaceChild"
        static let textContent: JSString = "textContent"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _nodeType = ReadonlyAttribute(jsObject: jsObject, name: Keys.nodeType)
        _nodeName = ReadonlyAttribute(jsObject: jsObject, name: Keys.nodeName)
        _baseURI = ReadonlyAttribute(jsObject: jsObject, name: Keys.baseURI)
        _isConnected = ReadonlyAttribute(jsObject: jsObject, name: Keys.isConnected)
        _ownerDocument = ReadonlyAttribute(jsObject: jsObject, name: Keys.ownerDocument)
        _parentNode = ReadonlyAttribute(jsObject: jsObject, name: Keys.parentNode)
        _parentElement = ReadonlyAttribute(jsObject: jsObject, name: Keys.parentElement)
        _childNodes = ReadonlyAttribute(jsObject: jsObject, name: Keys.childNodes)
        _firstChild = ReadonlyAttribute(jsObject: jsObject, name: Keys.firstChild)
        _lastChild = ReadonlyAttribute(jsObject: jsObject, name: Keys.lastChild)
        _previousSibling = ReadonlyAttribute(jsObject: jsObject, name: Keys.previousSibling)
        _nextSibling = ReadonlyAttribute(jsObject: jsObject, name: Keys.nextSibling)
        _nodeValue = ReadWriteAttribute(jsObject: jsObject, name: Keys.nodeValue)
        _textContent = ReadWriteAttribute(jsObject: jsObject, name: Keys.textContent)
        super.init(unsafelyWrapping: jsObject)
    }

    public static let ELEMENT_NODE: UInt16 = 1

    public static let ATTRIBUTE_NODE: UInt16 = 2

    public static let TEXT_NODE: UInt16 = 3

    public static let CDATA_SECTION_NODE: UInt16 = 4

    public static let ENTITY_REFERENCE_NODE: UInt16 = 5

    public static let ENTITY_NODE: UInt16 = 6

    public static let PROCESSING_INSTRUCTION_NODE: UInt16 = 7

    public static let COMMENT_NODE: UInt16 = 8

    public static let DOCUMENT_NODE: UInt16 = 9

    public static let DOCUMENT_TYPE_NODE: UInt16 = 10

    public static let DOCUMENT_FRAGMENT_NODE: UInt16 = 11

    public static let NOTATION_NODE: UInt16 = 12

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

    public func getRootNode(options: GetRootNodeOptions? = nil) -> Self {
        jsObject[Keys.getRootNode]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @ReadonlyAttribute
    public var parentNode: Node?

    @ReadonlyAttribute
    public var parentElement: Element?

    public func hasChildNodes() -> Bool {
        jsObject[Keys.hasChildNodes]!().fromJSValue()!
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
        jsObject[Keys.normalize]!().fromJSValue()!
    }

    public func cloneNode(deep: Bool? = nil) -> Self {
        jsObject[Keys.cloneNode]!(deep?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func isEqualNode(otherNode: Node?) -> Bool {
        jsObject[Keys.isEqualNode]!(otherNode.jsValue()).fromJSValue()!
    }

    public func isSameNode(otherNode: Node?) -> Bool {
        jsObject[Keys.isSameNode]!(otherNode.jsValue()).fromJSValue()!
    }

    public static let DOCUMENT_POSITION_DISCONNECTED: UInt16 = 0x01

    public static let DOCUMENT_POSITION_PRECEDING: UInt16 = 0x02

    public static let DOCUMENT_POSITION_FOLLOWING: UInt16 = 0x04

    public static let DOCUMENT_POSITION_CONTAINS: UInt16 = 0x08

    public static let DOCUMENT_POSITION_CONTAINED_BY: UInt16 = 0x10

    public static let DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: UInt16 = 0x20

    public func compareDocumentPosition(other: Node) -> UInt16 {
        jsObject[Keys.compareDocumentPosition]!(other.jsValue()).fromJSValue()!
    }

    public func contains(other: Node?) -> Bool {
        jsObject[Keys.contains]!(other.jsValue()).fromJSValue()!
    }

    public func lookupPrefix(namespace: String?) -> String? {
        jsObject[Keys.lookupPrefix]!(namespace.jsValue()).fromJSValue()!
    }

    public func lookupNamespaceURI(prefix: String?) -> String? {
        jsObject[Keys.lookupNamespaceURI]!(prefix.jsValue()).fromJSValue()!
    }

    public func isDefaultNamespace(namespace: String?) -> Bool {
        jsObject[Keys.isDefaultNamespace]!(namespace.jsValue()).fromJSValue()!
    }

    public func insertBefore(node: Node, child: Node?) -> Self {
        jsObject[Keys.insertBefore]!(node.jsValue(), child.jsValue()).fromJSValue()!
    }

    public func appendChild(node: Node) -> Self {
        jsObject[Keys.appendChild]!(node.jsValue()).fromJSValue()!
    }

    public func replaceChild(node: Node, child: Node) -> Self {
        jsObject[Keys.replaceChild]!(node.jsValue(), child.jsValue()).fromJSValue()!
    }

    public func removeChild(child: Node) -> Self {
        jsObject[Keys.removeChild]!(child.jsValue()).fromJSValue()!
    }
}
