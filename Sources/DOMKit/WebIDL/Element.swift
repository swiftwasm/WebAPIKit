// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Element: Node, InnerHTML, Region, GeometryUtils, ParentNode, NonDocumentTypeChildNode, ChildNode, Slottable, ARIAMixin, Animatable {
    override public class var constructor: JSFunction { JSObject.global[Strings.Element].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _outerHTML = ReadWriteAttribute(jsObject: jsObject, name: Strings.outerHTML)
        _part = ReadonlyAttribute(jsObject: jsObject, name: Strings.part)
        _scrollTop = ReadWriteAttribute(jsObject: jsObject, name: Strings.scrollTop)
        _scrollLeft = ReadWriteAttribute(jsObject: jsObject, name: Strings.scrollLeft)
        _scrollWidth = ReadonlyAttribute(jsObject: jsObject, name: Strings.scrollWidth)
        _scrollHeight = ReadonlyAttribute(jsObject: jsObject, name: Strings.scrollHeight)
        _clientTop = ReadonlyAttribute(jsObject: jsObject, name: Strings.clientTop)
        _clientLeft = ReadonlyAttribute(jsObject: jsObject, name: Strings.clientLeft)
        _clientWidth = ReadonlyAttribute(jsObject: jsObject, name: Strings.clientWidth)
        _clientHeight = ReadonlyAttribute(jsObject: jsObject, name: Strings.clientHeight)
        _namespaceURI = ReadonlyAttribute(jsObject: jsObject, name: Strings.namespaceURI)
        _prefix = ReadonlyAttribute(jsObject: jsObject, name: Strings.prefix)
        _localName = ReadonlyAttribute(jsObject: jsObject, name: Strings.localName)
        _tagName = ReadonlyAttribute(jsObject: jsObject, name: Strings.tagName)
        _id = ReadWriteAttribute(jsObject: jsObject, name: Strings.id)
        _className = ReadWriteAttribute(jsObject: jsObject, name: Strings.className)
        _classList = ReadonlyAttribute(jsObject: jsObject, name: Strings.classList)
        _slot = ReadWriteAttribute(jsObject: jsObject, name: Strings.slot)
        _attributes = ReadonlyAttribute(jsObject: jsObject, name: Strings.attributes)
        _shadowRoot = ReadonlyAttribute(jsObject: jsObject, name: Strings.shadowRoot)
        _editContext = ReadWriteAttribute(jsObject: jsObject, name: Strings.editContext)
        _elementTiming = ReadWriteAttribute(jsObject: jsObject, name: Strings.elementTiming)
        _onfullscreenchange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onfullscreenchange)
        _onfullscreenerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onfullscreenerror)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var outerHTML: String

    public func insertAdjacentHTML(position: String, text: String) {
        let this = jsObject
        _ = this[Strings.insertAdjacentHTML].function!(this: this, arguments: [position.jsValue(), text.jsValue()])
    }

    public func getSpatialNavigationContainer() -> Node {
        let this = jsObject
        return this[Strings.getSpatialNavigationContainer].function!(this: this, arguments: []).fromJSValue()!
    }

    public func focusableAreas(option: FocusableAreasOption? = nil) -> [Node] {
        let this = jsObject
        return this[Strings.focusableAreas].function!(this: this, arguments: [option?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func spatialNavigationSearch(dir: SpatialNavigationDirection, options: SpatialNavigationSearchOptions? = nil) -> Node? {
        let this = jsObject
        return this[Strings.spatialNavigationSearch].function!(this: this, arguments: [dir.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func pseudo(type: String) -> CSSPseudoElement? {
        let this = jsObject
        return this[Strings.pseudo].function!(this: this, arguments: [type.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var part: DOMTokenList

    public func computedStyleMap() -> StylePropertyMapReadOnly {
        let this = jsObject
        return this[Strings.computedStyleMap].function!(this: this, arguments: []).fromJSValue()!
    }

    public func getClientRects() -> DOMRectList {
        let this = jsObject
        return this[Strings.getClientRects].function!(this: this, arguments: []).fromJSValue()!
    }

    public func getBoundingClientRect() -> DOMRect {
        let this = jsObject
        return this[Strings.getBoundingClientRect].function!(this: this, arguments: []).fromJSValue()!
    }

    public func isVisible(options: IsVisibleOptions? = nil) -> Bool {
        let this = jsObject
        return this[Strings.isVisible].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func scrollIntoView(arg: __UNSUPPORTED_UNION__? = nil) {
        let this = jsObject
        _ = this[Strings.scrollIntoView].function!(this: this, arguments: [arg?.jsValue() ?? .undefined])
    }

    public func scroll(options: ScrollToOptions? = nil) {
        let this = jsObject
        _ = this[Strings.scroll].function!(this: this, arguments: [options?.jsValue() ?? .undefined])
    }

    public func scroll(x: Double, y: Double) {
        let this = jsObject
        _ = this[Strings.scroll].function!(this: this, arguments: [x.jsValue(), y.jsValue()])
    }

    public func scrollTo(options: ScrollToOptions? = nil) {
        let this = jsObject
        _ = this[Strings.scrollTo].function!(this: this, arguments: [options?.jsValue() ?? .undefined])
    }

    public func scrollTo(x: Double, y: Double) {
        let this = jsObject
        _ = this[Strings.scrollTo].function!(this: this, arguments: [x.jsValue(), y.jsValue()])
    }

    public func scrollBy(options: ScrollToOptions? = nil) {
        let this = jsObject
        _ = this[Strings.scrollBy].function!(this: this, arguments: [options?.jsValue() ?? .undefined])
    }

    public func scrollBy(x: Double, y: Double) {
        let this = jsObject
        _ = this[Strings.scrollBy].function!(this: this, arguments: [x.jsValue(), y.jsValue()])
    }

    @ReadWriteAttribute
    public var scrollTop: Double

    @ReadWriteAttribute
    public var scrollLeft: Double

    @ReadonlyAttribute
    public var scrollWidth: Int32

    @ReadonlyAttribute
    public var scrollHeight: Int32

    @ReadonlyAttribute
    public var clientTop: Int32

    @ReadonlyAttribute
    public var clientLeft: Int32

    @ReadonlyAttribute
    public var clientWidth: Int32

    @ReadonlyAttribute
    public var clientHeight: Int32

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
        let this = jsObject
        return this[Strings.hasAttributes].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadonlyAttribute
    public var attributes: NamedNodeMap

    public func getAttributeNames() -> [String] {
        let this = jsObject
        return this[Strings.getAttributeNames].function!(this: this, arguments: []).fromJSValue()!
    }

    public func getAttribute(qualifiedName: String) -> String? {
        let this = jsObject
        return this[Strings.getAttribute].function!(this: this, arguments: [qualifiedName.jsValue()]).fromJSValue()!
    }

    public func getAttributeNS(namespace: String?, localName: String) -> String? {
        let this = jsObject
        return this[Strings.getAttributeNS].function!(this: this, arguments: [namespace.jsValue(), localName.jsValue()]).fromJSValue()!
    }

    public func setAttribute(qualifiedName: String, value: String) {
        let this = jsObject
        _ = this[Strings.setAttribute].function!(this: this, arguments: [qualifiedName.jsValue(), value.jsValue()])
    }

    public func setAttributeNS(namespace: String?, qualifiedName: String, value: String) {
        let this = jsObject
        _ = this[Strings.setAttributeNS].function!(this: this, arguments: [namespace.jsValue(), qualifiedName.jsValue(), value.jsValue()])
    }

    public func removeAttribute(qualifiedName: String) {
        let this = jsObject
        _ = this[Strings.removeAttribute].function!(this: this, arguments: [qualifiedName.jsValue()])
    }

    public func removeAttributeNS(namespace: String?, localName: String) {
        let this = jsObject
        _ = this[Strings.removeAttributeNS].function!(this: this, arguments: [namespace.jsValue(), localName.jsValue()])
    }

    public func toggleAttribute(qualifiedName: String, force: Bool? = nil) -> Bool {
        let this = jsObject
        return this[Strings.toggleAttribute].function!(this: this, arguments: [qualifiedName.jsValue(), force?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func hasAttribute(qualifiedName: String) -> Bool {
        let this = jsObject
        return this[Strings.hasAttribute].function!(this: this, arguments: [qualifiedName.jsValue()]).fromJSValue()!
    }

    public func hasAttributeNS(namespace: String?, localName: String) -> Bool {
        let this = jsObject
        return this[Strings.hasAttributeNS].function!(this: this, arguments: [namespace.jsValue(), localName.jsValue()]).fromJSValue()!
    }

    public func getAttributeNode(qualifiedName: String) -> Attr? {
        let this = jsObject
        return this[Strings.getAttributeNode].function!(this: this, arguments: [qualifiedName.jsValue()]).fromJSValue()!
    }

    public func getAttributeNodeNS(namespace: String?, localName: String) -> Attr? {
        let this = jsObject
        return this[Strings.getAttributeNodeNS].function!(this: this, arguments: [namespace.jsValue(), localName.jsValue()]).fromJSValue()!
    }

    public func setAttributeNode(attr: Attr) -> Attr? {
        let this = jsObject
        return this[Strings.setAttributeNode].function!(this: this, arguments: [attr.jsValue()]).fromJSValue()!
    }

    public func setAttributeNodeNS(attr: Attr) -> Attr? {
        let this = jsObject
        return this[Strings.setAttributeNodeNS].function!(this: this, arguments: [attr.jsValue()]).fromJSValue()!
    }

    public func removeAttributeNode(attr: Attr) -> Attr {
        let this = jsObject
        return this[Strings.removeAttributeNode].function!(this: this, arguments: [attr.jsValue()]).fromJSValue()!
    }

    public func attachShadow(init: ShadowRootInit) -> ShadowRoot {
        let this = jsObject
        return this[Strings.attachShadow].function!(this: this, arguments: [`init`.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var shadowRoot: ShadowRoot?

    public func closest(selectors: String) -> Element? {
        let this = jsObject
        return this[Strings.closest].function!(this: this, arguments: [selectors.jsValue()]).fromJSValue()!
    }

    public func matches(selectors: String) -> Bool {
        let this = jsObject
        return this[Strings.matches].function!(this: this, arguments: [selectors.jsValue()]).fromJSValue()!
    }

    public func webkitMatchesSelector(selectors: String) -> Bool {
        let this = jsObject
        return this[Strings.webkitMatchesSelector].function!(this: this, arguments: [selectors.jsValue()]).fromJSValue()!
    }

    public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        let this = jsObject
        return this[Strings.getElementsByTagName].function!(this: this, arguments: [qualifiedName.jsValue()]).fromJSValue()!
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        let this = jsObject
        return this[Strings.getElementsByTagNameNS].function!(this: this, arguments: [namespace.jsValue(), localName.jsValue()]).fromJSValue()!
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        let this = jsObject
        return this[Strings.getElementsByClassName].function!(this: this, arguments: [classNames.jsValue()]).fromJSValue()!
    }

    public func insertAdjacentElement(where: String, element: Element) -> Element? {
        let this = jsObject
        return this[Strings.insertAdjacentElement].function!(this: this, arguments: [`where`.jsValue(), element.jsValue()]).fromJSValue()!
    }

    public func insertAdjacentText(where: String, data: String) {
        let this = jsObject
        _ = this[Strings.insertAdjacentText].function!(this: this, arguments: [`where`.jsValue(), data.jsValue()])
    }

    @ReadWriteAttribute
    public var editContext: EditContext?

    @ReadWriteAttribute
    public var elementTiming: String

    public func requestFullscreen(options: FullscreenOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.requestFullscreen].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func requestFullscreen(options: FullscreenOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.requestFullscreen].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    @ClosureAttribute1Optional
    public var onfullscreenchange: EventHandler

    @ClosureAttribute1Optional
    public var onfullscreenerror: EventHandler

    public func setPointerCapture(pointerId: Int32) {
        let this = jsObject
        _ = this[Strings.setPointerCapture].function!(this: this, arguments: [pointerId.jsValue()])
    }

    public func releasePointerCapture(pointerId: Int32) {
        let this = jsObject
        _ = this[Strings.releasePointerCapture].function!(this: this, arguments: [pointerId.jsValue()])
    }

    public func hasPointerCapture(pointerId: Int32) -> Bool {
        let this = jsObject
        return this[Strings.hasPointerCapture].function!(this: this, arguments: [pointerId.jsValue()]).fromJSValue()!
    }

    public func requestPointerLock() {
        let this = jsObject
        _ = this[Strings.requestPointerLock].function!(this: this, arguments: [])
    }

    public func setHTML(input: String, options: SetHTMLOptions? = nil) {
        let this = jsObject
        _ = this[Strings.setHTML].function!(this: this, arguments: [input.jsValue(), options?.jsValue() ?? .undefined])
    }
}
