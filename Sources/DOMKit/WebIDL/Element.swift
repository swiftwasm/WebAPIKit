// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Element: Node, ParentNode, NonDocumentTypeChildNode, ChildNode, Slottable, ARIAMixin {
    override public class var constructor: JSFunction { JSObject.global.Element.function! }

    private enum Keys {
        static let attachShadow: JSString = "attachShadow"
        static let attributes: JSString = "attributes"
        static let classList: JSString = "classList"
        static let className: JSString = "className"
        static let closest: JSString = "closest"
        static let getAttribute: JSString = "getAttribute"
        static let getAttributeNS: JSString = "getAttributeNS"
        static let getAttributeNames: JSString = "getAttributeNames"
        static let getAttributeNode: JSString = "getAttributeNode"
        static let getAttributeNodeNS: JSString = "getAttributeNodeNS"
        static let getElementsByClassName: JSString = "getElementsByClassName"
        static let getElementsByTagName: JSString = "getElementsByTagName"
        static let getElementsByTagNameNS: JSString = "getElementsByTagNameNS"
        static let hasAttribute: JSString = "hasAttribute"
        static let hasAttributeNS: JSString = "hasAttributeNS"
        static let hasAttributes: JSString = "hasAttributes"
        static let id: JSString = "id"
        static let insertAdjacentElement: JSString = "insertAdjacentElement"
        static let insertAdjacentText: JSString = "insertAdjacentText"
        static let localName: JSString = "localName"
        static let matches: JSString = "matches"
        static let namespaceURI: JSString = "namespaceURI"
        static let prefix: JSString = "prefix"
        static let removeAttribute: JSString = "removeAttribute"
        static let removeAttributeNS: JSString = "removeAttributeNS"
        static let removeAttributeNode: JSString = "removeAttributeNode"
        static let setAttribute: JSString = "setAttribute"
        static let setAttributeNS: JSString = "setAttributeNS"
        static let setAttributeNode: JSString = "setAttributeNode"
        static let setAttributeNodeNS: JSString = "setAttributeNodeNS"
        static let shadowRoot: JSString = "shadowRoot"
        static let slot: JSString = "slot"
        static let tagName: JSString = "tagName"
        static let toggleAttribute: JSString = "toggleAttribute"
        static let webkitMatchesSelector: JSString = "webkitMatchesSelector"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _namespaceURI = ReadonlyAttribute(jsObject: jsObject, name: Keys.namespaceURI)
        _prefix = ReadonlyAttribute(jsObject: jsObject, name: Keys.prefix)
        _localName = ReadonlyAttribute(jsObject: jsObject, name: Keys.localName)
        _tagName = ReadonlyAttribute(jsObject: jsObject, name: Keys.tagName)
        _id = ReadWriteAttribute(jsObject: jsObject, name: Keys.id)
        _className = ReadWriteAttribute(jsObject: jsObject, name: Keys.className)
        _classList = ReadonlyAttribute(jsObject: jsObject, name: Keys.classList)
        _slot = ReadWriteAttribute(jsObject: jsObject, name: Keys.slot)
        _attributes = ReadonlyAttribute(jsObject: jsObject, name: Keys.attributes)
        _shadowRoot = ReadonlyAttribute(jsObject: jsObject, name: Keys.shadowRoot)
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
        jsObject[Keys.hasAttributes]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var attributes: NamedNodeMap

    public func getAttributeNames() -> [String] {
        jsObject[Keys.getAttributeNames]!().fromJSValue()!
    }

    public func getAttribute(qualifiedName: String) -> String? {
        jsObject[Keys.getAttribute]!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getAttributeNS(namespace: String?, localName: String) -> String? {
        jsObject[Keys.getAttributeNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setAttribute(qualifiedName: String, value: String) {
        jsObject[Keys.setAttribute]!(qualifiedName.jsValue(), value.jsValue()).fromJSValue()!
    }

    public func setAttributeNS(namespace: String?, qualifiedName: String, value: String) {
        jsObject[Keys.setAttributeNS]!(namespace.jsValue(), qualifiedName.jsValue(), value.jsValue()).fromJSValue()!
    }

    public func removeAttribute(qualifiedName: String) {
        jsObject[Keys.removeAttribute]!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func removeAttributeNS(namespace: String?, localName: String) {
        jsObject[Keys.removeAttributeNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func toggleAttribute(qualifiedName: String, force: Bool? = nil) -> Bool {
        jsObject[Keys.toggleAttribute]!(qualifiedName.jsValue(), force?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func hasAttribute(qualifiedName: String) -> Bool {
        jsObject[Keys.hasAttribute]!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func hasAttributeNS(namespace: String?, localName: String) -> Bool {
        jsObject[Keys.hasAttributeNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getAttributeNode(qualifiedName: String) -> Attr? {
        jsObject[Keys.getAttributeNode]!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getAttributeNodeNS(namespace: String?, localName: String) -> Attr? {
        jsObject[Keys.getAttributeNodeNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setAttributeNode(attr: Attr) -> Attr? {
        jsObject[Keys.setAttributeNode]!(attr.jsValue()).fromJSValue()!
    }

    public func setAttributeNodeNS(attr: Attr) -> Attr? {
        jsObject[Keys.setAttributeNodeNS]!(attr.jsValue()).fromJSValue()!
    }

    public func removeAttributeNode(attr: Attr) -> Attr {
        jsObject[Keys.removeAttributeNode]!(attr.jsValue()).fromJSValue()!
    }

    public func attachShadow(init: ShadowRootInit) -> ShadowRoot {
        jsObject[Keys.attachShadow]!(`init`.jsValue()).fromJSValue()!
    }

    @ReadonlyAttribute
    public var shadowRoot: ShadowRoot?

    public func closest(selectors: String) -> Element? {
        jsObject[Keys.closest]!(selectors.jsValue()).fromJSValue()!
    }

    public func matches(selectors: String) -> Bool {
        jsObject[Keys.matches]!(selectors.jsValue()).fromJSValue()!
    }

    public func webkitMatchesSelector(selectors: String) -> Bool {
        jsObject[Keys.webkitMatchesSelector]!(selectors.jsValue()).fromJSValue()!
    }

    public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        jsObject[Keys.getElementsByTagName]!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        jsObject[Keys.getElementsByTagNameNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        jsObject[Keys.getElementsByClassName]!(classNames.jsValue()).fromJSValue()!
    }

    public func insertAdjacentElement(where: String, element: Element) -> Element? {
        jsObject[Keys.insertAdjacentElement]!(`where`.jsValue(), element.jsValue()).fromJSValue()!
    }

    public func insertAdjacentText(where: String, data: String) {
        jsObject[Keys.insertAdjacentText]!(`where`.jsValue(), data.jsValue()).fromJSValue()!
    }
}
