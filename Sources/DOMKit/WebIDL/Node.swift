// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Node: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.Node].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _nodeType = ReadonlyAttribute(jsObject: jsObject, name: Strings.nodeType)
        _nodeName = ReadonlyAttribute(jsObject: jsObject, name: Strings.nodeName)
        _baseURI = ReadonlyAttribute(jsObject: jsObject, name: Strings.baseURI)
        _isConnected = ReadonlyAttribute(jsObject: jsObject, name: Strings.isConnected)
        _ownerDocument = ReadonlyAttribute(jsObject: jsObject, name: Strings.ownerDocument)
        _parentNode = ReadonlyAttribute(jsObject: jsObject, name: Strings.parentNode)
        _parentElement = ReadonlyAttribute(jsObject: jsObject, name: Strings.parentElement)
        _childNodes = ReadonlyAttribute(jsObject: jsObject, name: Strings.childNodes)
        _firstChild = ReadonlyAttribute(jsObject: jsObject, name: Strings.firstChild)
        _lastChild = ReadonlyAttribute(jsObject: jsObject, name: Strings.lastChild)
        _previousSibling = ReadonlyAttribute(jsObject: jsObject, name: Strings.previousSibling)
        _nextSibling = ReadonlyAttribute(jsObject: jsObject, name: Strings.nextSibling)
        _nodeValue = ReadWriteAttribute(jsObject: jsObject, name: Strings.nodeValue)
        _textContent = ReadWriteAttribute(jsObject: jsObject, name: Strings.textContent)
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

    @inlinable public func getRootNode(options: GetRootNodeOptions? = nil) -> Self {
        let this = jsObject
        return this[Strings.getRootNode].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var parentNode: Node?

    @ReadonlyAttribute
    public var parentElement: Element?

    @inlinable public func hasChildNodes() -> Bool {
        let this = jsObject
        return this[Strings.hasChildNodes].function!(this: this, arguments: []).fromJSValue()!
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

    @inlinable public func normalize() {
        let this = jsObject
        _ = this[Strings.normalize].function!(this: this, arguments: [])
    }

    @inlinable public func cloneNode(deep: Bool? = nil) -> Self {
        let this = jsObject
        return this[Strings.cloneNode].function!(this: this, arguments: [deep?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func isEqualNode(otherNode: Node?) -> Bool {
        let this = jsObject
        return this[Strings.isEqualNode].function!(this: this, arguments: [otherNode.jsValue()]).fromJSValue()!
    }

    @inlinable public func isSameNode(otherNode: Node?) -> Bool {
        let this = jsObject
        return this[Strings.isSameNode].function!(this: this, arguments: [otherNode.jsValue()]).fromJSValue()!
    }

    public static let DOCUMENT_POSITION_DISCONNECTED: UInt16 = 0x01

    public static let DOCUMENT_POSITION_PRECEDING: UInt16 = 0x02

    public static let DOCUMENT_POSITION_FOLLOWING: UInt16 = 0x04

    public static let DOCUMENT_POSITION_CONTAINS: UInt16 = 0x08

    public static let DOCUMENT_POSITION_CONTAINED_BY: UInt16 = 0x10

    public static let DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: UInt16 = 0x20

    @inlinable public func compareDocumentPosition(other: Node) -> UInt16 {
        let this = jsObject
        return this[Strings.compareDocumentPosition].function!(this: this, arguments: [other.jsValue()]).fromJSValue()!
    }

    @inlinable public func contains(other: Node?) -> Bool {
        let this = jsObject
        return this[Strings.contains].function!(this: this, arguments: [other.jsValue()]).fromJSValue()!
    }

    @inlinable public func lookupPrefix(namespace: String?) -> String? {
        let this = jsObject
        return this[Strings.lookupPrefix].function!(this: this, arguments: [namespace.jsValue()]).fromJSValue()!
    }

    @inlinable public func lookupNamespaceURI(prefix: String?) -> String? {
        let this = jsObject
        return this[Strings.lookupNamespaceURI].function!(this: this, arguments: [prefix.jsValue()]).fromJSValue()!
    }

    @inlinable public func isDefaultNamespace(namespace: String?) -> Bool {
        let this = jsObject
        return this[Strings.isDefaultNamespace].function!(this: this, arguments: [namespace.jsValue()]).fromJSValue()!
    }

    @inlinable public func insertBefore(node: Node, child: Node?) -> Self {
        let this = jsObject
        return this[Strings.insertBefore].function!(this: this, arguments: [node.jsValue(), child.jsValue()]).fromJSValue()!
    }

    @inlinable public func appendChild(node: Node) -> Self {
        let this = jsObject
        return this[Strings.appendChild].function!(this: this, arguments: [node.jsValue()]).fromJSValue()!
    }

    @inlinable public func replaceChild(node: Node, child: Node) -> Self {
        let this = jsObject
        return this[Strings.replaceChild].function!(this: this, arguments: [node.jsValue(), child.jsValue()]).fromJSValue()!
    }

    @inlinable public func removeChild(child: Node) -> Self {
        let this = jsObject
        return this[Strings.removeChild].function!(this: this, arguments: [child.jsValue()]).fromJSValue()!
    }
}
