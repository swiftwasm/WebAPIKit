
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Document: Node, DocumentOrShadowRoot, NonElementParentNode, ParentNode, XPathEvaluatorBase {
    override public class var constructor: JSFunction { JSObject.global.Document.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _implementation = ReadonlyAttribute(jsObject: jsObject, name: "implementation")
        _URL = ReadonlyAttribute(jsObject: jsObject, name: "URL")
        _documentURI = ReadonlyAttribute(jsObject: jsObject, name: "documentURI")
        _compatMode = ReadonlyAttribute(jsObject: jsObject, name: "compatMode")
        _characterSet = ReadonlyAttribute(jsObject: jsObject, name: "characterSet")
        _charset = ReadonlyAttribute(jsObject: jsObject, name: "charset")
        _inputEncoding = ReadonlyAttribute(jsObject: jsObject, name: "inputEncoding")
        _contentType = ReadonlyAttribute(jsObject: jsObject, name: "contentType")
        _doctype = ReadonlyAttribute(jsObject: jsObject, name: "doctype")
        _documentElement = ReadonlyAttribute(jsObject: jsObject, name: "documentElement")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Document.constructor.new())
    }

    @ReadonlyAttribute
    public var implementation: DOMImplementation

    @ReadonlyAttribute
    public var URL: String

    @ReadonlyAttribute
    public var documentURI: String

    @ReadonlyAttribute
    public var compatMode: String

    @ReadonlyAttribute
    public var characterSet: String

    @ReadonlyAttribute
    public var charset: String

    @ReadonlyAttribute
    public var inputEncoding: String

    @ReadonlyAttribute
    public var contentType: String

    @ReadonlyAttribute
    public var doctype: DocumentType?

    @ReadonlyAttribute
    public var documentElement: Element?

    public func getElementsByTagName(qualifiedName: String) -> HTMLCollection {
        return jsObject.getElementsByTagName!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        return jsObject.getElementsByTagNameNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        return jsObject.getElementsByClassName!(classNames.jsValue()).fromJSValue()!
    }

    public func createElement(localName: String, options: StringOrElementCreationOptions = [:]) -> Element {
        return jsObject.createElement!(localName.jsValue(), options.jsValue()).fromJSValue()!
    }

    public func createElementNS(namespace: String?, qualifiedName: String, options: StringOrElementCreationOptions = [:]) -> Element {
        return jsObject.createElementNS!(namespace.jsValue(), qualifiedName.jsValue(), options.jsValue()).fromJSValue()!
    }

    public func createDocumentFragment() -> DocumentFragment {
        return jsObject.createDocumentFragment!().fromJSValue()!
    }

    public func createTextNode(data: String) -> Text {
        return jsObject.createTextNode!(data.jsValue()).fromJSValue()!
    }

    public func createCDATASection(data: String) -> CDATASection {
        return jsObject.createCDATASection!(data.jsValue()).fromJSValue()!
    }

    public func createComment(data: String) -> Comment {
        return jsObject.createComment!(data.jsValue()).fromJSValue()!
    }

    public func createProcessingInstruction(target: String, data: String) -> ProcessingInstruction {
        return jsObject.createProcessingInstruction!(target.jsValue(), data.jsValue()).fromJSValue()!
    }

    public func importNode(node: Node, deep: Bool = false) -> Node {
        return jsObject.importNode!(node.jsValue(), deep.jsValue()).fromJSValue()!
    }

    public func adoptNode(node: Node) -> Node {
        return jsObject.adoptNode!(node.jsValue()).fromJSValue()!
    }

    public func createAttribute(localName: String) -> Attr {
        return jsObject.createAttribute!(localName.jsValue()).fromJSValue()!
    }

    public func createAttributeNS(namespace: String?, qualifiedName: String) -> Attr {
        return jsObject.createAttributeNS!(namespace.jsValue(), qualifiedName.jsValue()).fromJSValue()!
    }

    public func createEvent(interface: String) -> Event {
        return jsObject.createEvent!(interface.jsValue()).fromJSValue()!
    }

    public func createRange() -> Range {
        return jsObject.createRange!().fromJSValue()!
    }

    public func createNodeIterator<NodeFilterType: NodeFilter>(root: Node, whatToShow: UInt32 = 4_294_967_295, filter: NodeFilterType? = nil) -> NodeIterator {
        return jsObject.createNodeIterator!(root.jsValue(), whatToShow.jsValue(), filter.jsValue()).fromJSValue()!
    }

    public func createNodeIterator(root: Node, whatToShow: UInt32 = 4_294_967_295, filter: ((Node) -> UInt16)? = nil) -> NodeIterator {
        return jsObject.createNodeIterator!(root.jsValue(), whatToShow.jsValue(), filter == nil ? nil : JSClosure { filter!($0[0].fromJSValue()!).jsValue() }).fromJSValue()!
    }

    public func createTreeWalker<NodeFilterType: NodeFilter>(root: Node, whatToShow: UInt32 = 4_294_967_295, filter: NodeFilterType? = nil) -> TreeWalker {
        return jsObject.createTreeWalker!(root.jsValue(), whatToShow.jsValue(), filter.jsValue()).fromJSValue()!
    }

    public func createTreeWalker(root: Node, whatToShow: UInt32 = 4_294_967_295, filter: ((Node) -> UInt16)? = nil) -> TreeWalker {
        return jsObject.createTreeWalker!(root.jsValue(), whatToShow.jsValue(), filter == nil ? nil : JSClosure { filter!($0[0].fromJSValue()!).jsValue() }).fromJSValue()!
    }
}
