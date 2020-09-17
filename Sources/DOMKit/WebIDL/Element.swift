
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Element: Node, ChildNode, NonDocumentTypeChildNode, ParentNode, Slotable {
    override public class var constructor: JSFunction { JSObject.global.Element.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _namespaceURI = ReadonlyAttribute(jsObject: jsObject, name: "namespaceURI")
        _prefix = ReadonlyAttribute(jsObject: jsObject, name: "prefix")
        _localName = ReadonlyAttribute(jsObject: jsObject, name: "localName")
        _tagName = ReadonlyAttribute(jsObject: jsObject, name: "tagName")
        _id = ReadWriteAttribute(jsObject: jsObject, name: "id")
        _className = ReadWriteAttribute(jsObject: jsObject, name: "className")
        _classList = ReadonlyAttribute(jsObject: jsObject, name: "classList")
        _slot = ReadWriteAttribute(jsObject: jsObject, name: "slot")
        _attributes = ReadonlyAttribute(jsObject: jsObject, name: "attributes")
        _shadowRoot = ReadonlyAttribute(jsObject: jsObject, name: "shadowRoot")
        super.init(unsafelyWrapping: jsObject)
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
        return jsObject.hasAttributes!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var attributes: NamedNodeMap

    public func getAttributeNames() -> [String] {
        return jsObject.getAttributeNames!().fromJSValue()!
    }

    public func getAttribute(qualifiedName: String) -> String? {
        return jsObject.getAttribute!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getAttributeNS(namespace: String?, localName: String) -> String? {
        return jsObject.getAttributeNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setAttribute(qualifiedName: String, value: String) {
        _ = jsObject.setAttribute!(qualifiedName.jsValue(), value.jsValue())
    }

    public func setAttributeNS(namespace: String?, qualifiedName: String, value: String) {
        _ = jsObject.setAttributeNS!(namespace.jsValue(), qualifiedName.jsValue(), value.jsValue())
    }

    public func removeAttribute(qualifiedName: String) {
        _ = jsObject.removeAttribute!(qualifiedName.jsValue())
    }

    public func removeAttributeNS(namespace: String?, localName: String) {
        _ = jsObject.removeAttributeNS!(namespace.jsValue(), localName.jsValue())
    }

    public func toggleAttribute(qualifiedName: String, force: Bool) -> Bool {
        return jsObject.toggleAttribute!(qualifiedName.jsValue(), force.jsValue()).fromJSValue()!
    }

    public func toggleAttribute(qualifiedName: String) -> Bool {
        return jsObject.toggleAttribute!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func hasAttribute(qualifiedName: String) -> Bool {
        return jsObject.hasAttribute!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func hasAttributeNS(namespace: String?, localName: String) -> Bool {
        return jsObject.hasAttributeNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getAttributeNode(qualifiedName: String) -> Attr? {
        return jsObject.getAttributeNode!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getAttributeNodeNS(namespace: String?, localName: String) -> Attr? {
        return jsObject.getAttributeNodeNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setAttributeNode(attr: Attr) -> Attr? {
        return jsObject.setAttributeNode!(attr.jsValue()).fromJSValue()!
    }

    public func setAttributeNodeNS(attr: Attr) -> Attr? {
        return jsObject.setAttributeNodeNS!(attr.jsValue()).fromJSValue()!
    }

    public func removeAttributeNode(attr: Attr) -> Attr {
        return jsObject.removeAttributeNode!(attr.jsValue()).fromJSValue()!
    }

    public func attachShadow(init: ShadowRootInit) -> ShadowRoot {
        return jsObject.attachShadow!(`init`.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var shadowRoot: ShadowRoot?

    public func closest(selectors: String) -> Element? {
        return jsObject.closest!(selectors.jsValue()).fromJSValue()!
    }

    public func matches(selectors: String) -> Bool {
        return jsObject.matches!(selectors.jsValue()).fromJSValue()!
    }

    public func webkitMatchesSelector(selectors: String) -> Bool {
        return jsObject.webkitMatchesSelector!(selectors.jsValue()).fromJSValue()!
    }

    public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        return jsObject.getElementsByTagName!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        return jsObject.getElementsByTagNameNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        return jsObject.getElementsByClassName!(classNames.jsValue()).fromJSValue()!
    }

    public func insertAdjacentElement(where: String, element: Element) -> Element? {
        return jsObject.insertAdjacentElement!(`where`.jsValue(), element.jsValue()).fromJSValue()!
    }

    public func insertAdjacentText(where: String, data: String) {
        _ = jsObject.insertAdjacentText!(`where`.jsValue(), data.jsValue())
    }
}
