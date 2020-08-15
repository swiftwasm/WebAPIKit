
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Element: Node, ChildNode, NonDocumentTypeChildNode, ParentNode, Slotable {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Element.function! }

    public required init(withCompatibleObject objectRef: JSObjectRef) {
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
        super.init(withCompatibleObject: objectRef)
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
        return objectRef.hasAttributes!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var attributes: NamedNodeMap

    public func getAttributeNames() -> [String] {
        return objectRef.getAttributeNames!().fromJSValue()!
    }

    public func getAttribute(qualifiedName: String) -> String? {
        return objectRef.getAttribute!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getAttributeNS(namespace: String?, localName: String) -> String? {
        return objectRef.getAttributeNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setAttribute(qualifiedName: String, value: String) {
        _ = objectRef.setAttribute!(qualifiedName.jsValue(), value.jsValue())
    }

    public func setAttributeNS(namespace: String?, qualifiedName: String, value: String) {
        _ = objectRef.setAttributeNS!(namespace.jsValue(), qualifiedName.jsValue(), value.jsValue())
    }

    public func removeAttribute(qualifiedName: String) {
        _ = objectRef.removeAttribute!(qualifiedName.jsValue())
    }

    public func removeAttributeNS(namespace: String?, localName: String) {
        _ = objectRef.removeAttributeNS!(namespace.jsValue(), localName.jsValue())
    }

    public func toggleAttribute(qualifiedName: String, force: Bool) -> Bool {
        return objectRef.toggleAttribute!(qualifiedName.jsValue(), force.jsValue()).fromJSValue()!
    }

    public func toggleAttribute(qualifiedName: String) -> Bool {
        return objectRef.toggleAttribute!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func hasAttribute(qualifiedName: String) -> Bool {
        return objectRef.hasAttribute!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func hasAttributeNS(namespace: String?, localName: String) -> Bool {
        return objectRef.hasAttributeNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getAttributeNode(qualifiedName: String) -> Attr? {
        return objectRef.getAttributeNode!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getAttributeNodeNS(namespace: String?, localName: String) -> Attr? {
        return objectRef.getAttributeNodeNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setAttributeNode(attr: Attr) -> Attr? {
        return objectRef.setAttributeNode!(attr.jsValue()).fromJSValue()!
    }

    public func setAttributeNodeNS(attr: Attr) -> Attr? {
        return objectRef.setAttributeNodeNS!(attr.jsValue()).fromJSValue()!
    }

    public func removeAttributeNode(attr: Attr) -> Attr {
        return objectRef.removeAttributeNode!(attr.jsValue()).fromJSValue()!
    }

    public func attachShadow(init: ShadowRootInit) -> ShadowRoot {
        return objectRef.attachShadow!(`init`.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var shadowRoot: ShadowRoot?

    public func closest(selectors: String) -> Element? {
        return objectRef.closest!(selectors.jsValue()).fromJSValue()!
    }

    public func matches(selectors: String) -> Bool {
        return objectRef.matches!(selectors.jsValue()).fromJSValue()!
    }

    public func webkitMatchesSelector(selectors: String) -> Bool {
        return objectRef.webkitMatchesSelector!(selectors.jsValue()).fromJSValue()!
    }

    public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        return objectRef.getElementsByTagName!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        return objectRef.getElementsByTagNameNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        return objectRef.getElementsByClassName!(classNames.jsValue()).fromJSValue()!
    }

    public func insertAdjacentElement(where: String, element: Element) -> Element? {
        return objectRef.insertAdjacentElement!(`where`.jsValue(), element.jsValue()).fromJSValue()!
    }

    public func insertAdjacentText(where: String, data: String) {
        _ = objectRef.insertAdjacentText!(`where`.jsValue(), data.jsValue())
    }
}
