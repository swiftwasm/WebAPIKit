
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class Element: Node, ChildNode, NonDocumentTypeChildNode, ParentNode, Slotable {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Element.function! }

    public required init(objectRef: JSObjectRef) {
        _namespaceURI = ReadonlyAttribute(objectRef: objectRef, name: "namespaceURI")
        _prefix = ReadonlyAttribute(objectRef: objectRef, name: "prefix")
        _localName = ReadonlyAttribute(objectRef: objectRef, name: "localName")
        _tagName = ReadonlyAttribute(objectRef: objectRef, name: "tagName")
        _id = ReadWriteAttribute(objectRef: objectRef, name: "id")
        _className = ReadWriteAttribute(objectRef: objectRef, name: "className")
        _classList = ReadonlyAttribute(objectRef: objectRef, name: "classList")
        _slot = ReadWriteAttribute(objectRef: objectRef, name: "slot")
        _attributes = ReadonlyAttribute(objectRef: objectRef, name: "attributes")
        _shadowRoot = ReadonlyAttribute(objectRef: objectRef, name: "shadowRoot")
        super.init(objectRef: objectRef)
    }

    @ReadonlyAttribute
    public var namespaceURI: String?

    @ReadonlyAttribute
    public var prefix: String?

    @ReadonlyAttribute
    public var localName: String

    @ReadonlyAttribute
    public var tagName: String

    @ReadWriteAttribute
    public var id: String

    @ReadWriteAttribute
    public var className: String

    @ReadonlyAttribute
    public var classList: DOMTokenList

    @ReadWriteAttribute
    public var slot: String

    public func hasAttributes() -> Bool {
        return objectRef.hasAttributes!().fromJSValue()
    }

    @ReadonlyAttribute
    public var attributes: NamedNodeMap

    public func getAttributeNames() -> [String] {
        return objectRef.getAttributeNames!().fromJSValue()
    }

    public func getAttribute(qualifiedName: String) -> String? {
        return objectRef.getAttribute!(JSValue(from: qualifiedName)).fromJSValue()
    }

    public func getAttributeNS(namespace: String?, localName: String) -> String? {
        return objectRef.getAttributeNS!(JSValue(from: namespace), JSValue(from: localName)).fromJSValue()
    }

    public func setAttribute(qualifiedName: String, value: String) {
        _ = objectRef.setAttribute!(JSValue(from: qualifiedName), JSValue(from: value))
    }

    public func setAttributeNS(namespace: String?, qualifiedName: String, value: String) {
        _ = objectRef.setAttributeNS!(JSValue(from: namespace), JSValue(from: qualifiedName), JSValue(from: value))
    }

    public func removeAttribute(qualifiedName: String) {
        _ = objectRef.removeAttribute!(JSValue(from: qualifiedName))
    }

    public func removeAttributeNS(namespace: String?, localName: String) {
        _ = objectRef.removeAttributeNS!(JSValue(from: namespace), JSValue(from: localName))
    }

    public func toggleAttribute(qualifiedName: String, force: Bool) -> Bool {
        return objectRef.toggleAttribute!(JSValue(from: qualifiedName), JSValue(from: force)).fromJSValue()
    }

    public func toggleAttribute(qualifiedName: String) -> Bool {
        return objectRef.toggleAttribute!(JSValue(from: qualifiedName)).fromJSValue()
    }

    public func hasAttribute(qualifiedName: String) -> Bool {
        return objectRef.hasAttribute!(JSValue(from: qualifiedName)).fromJSValue()
    }

    public func hasAttributeNS(namespace: String?, localName: String) -> Bool {
        return objectRef.hasAttributeNS!(JSValue(from: namespace), JSValue(from: localName)).fromJSValue()
    }

    public func getAttributeNode(qualifiedName: String) -> Attr? {
        return objectRef.getAttributeNode!(JSValue(from: qualifiedName)).fromJSValue()
    }

    public func getAttributeNodeNS(namespace: String?, localName: String) -> Attr? {
        return objectRef.getAttributeNodeNS!(JSValue(from: namespace), JSValue(from: localName)).fromJSValue()
    }

    public func setAttributeNode(attr: Attr) -> Attr? {
        return objectRef.setAttributeNode!(JSValue(from: attr)).fromJSValue()
    }

    public func setAttributeNodeNS(attr: Attr) -> Attr? {
        return objectRef.setAttributeNodeNS!(JSValue(from: attr)).fromJSValue()
    }

    public func removeAttributeNode(attr: Attr) -> Attr {
        return objectRef.removeAttributeNode!(JSValue(from: attr)).fromJSValue()
    }

    public func attachShadow(init: ShadowRootInit) -> ShadowRoot {
        return objectRef.attachShadow!(JSValue(from: `init`)).fromJSValue()
    }

    @ReadonlyAttribute
    public var shadowRoot: ShadowRoot?

    public func closest(selectors: String) -> Element? {
        return objectRef.closest!(JSValue(from: selectors)).fromJSValue()
    }

    public func matches(selectors: String) -> Bool {
        return objectRef.matches!(JSValue(from: selectors)).fromJSValue()
    }

    public func webkitMatchesSelector(selectors: String) -> Bool {
        return objectRef.webkitMatchesSelector!(JSValue(from: selectors)).fromJSValue()
    }

    public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        return objectRef.getElementsByTagName!(JSValue(from: qualifiedName)).fromJSValue()
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        return objectRef.getElementsByTagNameNS!(JSValue(from: namespace), JSValue(from: localName)).fromJSValue()
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        return objectRef.getElementsByClassName!(JSValue(from: classNames)).fromJSValue()
    }

    public func insertAdjacentElement(where: String, element: Element) -> Element? {
        return objectRef.insertAdjacentElement!(JSValue(from: `where`), JSValue(from: element)).fromJSValue()
    }

    public func insertAdjacentText(where: String, data: String) {
        _ = objectRef.insertAdjacentText!(JSValue(from: `where`), JSValue(from: data))
    }
}
