
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class Document: Node, DocumentOrShadowRoot, NonElementParentNode, ParentNode, XPathEvaluatorBase {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.Document.function! }

    public required init(objectRef: JSObjectRef) {
        _implementation = ReadonlyAttribute(objectRef: objectRef, name: "implementation")
        _URL = ReadonlyAttribute(objectRef: objectRef, name: "URL")
        _documentURI = ReadonlyAttribute(objectRef: objectRef, name: "documentURI")
        _compatMode = ReadonlyAttribute(objectRef: objectRef, name: "compatMode")
        _characterSet = ReadonlyAttribute(objectRef: objectRef, name: "characterSet")
        _charset = ReadonlyAttribute(objectRef: objectRef, name: "charset")
        _inputEncoding = ReadonlyAttribute(objectRef: objectRef, name: "inputEncoding")
        _contentType = ReadonlyAttribute(objectRef: objectRef, name: "contentType")
        _doctype = ReadonlyAttribute(objectRef: objectRef, name: "doctype")
        _documentElement = ReadonlyAttribute(objectRef: objectRef, name: "documentElement")
        super.init(objectRef: objectRef)
    }

    public convenience init() {
        self.init(objectRef: Document.classRef.new())
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
        return objectRef.getElementsByTagName!(qualifiedName.jsValue()).fromJSValue()
    }

    public func getElementsByTagNameNS(namespace: String?, localName: String) -> HTMLCollection {
        return objectRef.getElementsByTagNameNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()
    }

    public func getElementsByClassName(classNames: String) -> HTMLCollection {
        return objectRef.getElementsByClassName!(classNames.jsValue()).fromJSValue()
    }

    public func createElement(localName: String, options: StringOrElementCreationOptions = [:]) -> Element {
        return objectRef.createElement!(localName.jsValue(), options.jsValue()).fromJSValue()
    }

    public func createElementNS(namespace: String?, qualifiedName: String, options: StringOrElementCreationOptions = [:]) -> Element {
        return objectRef.createElementNS!(namespace.jsValue(), qualifiedName.jsValue(), options.jsValue()).fromJSValue()
    }

    public func createDocumentFragment() -> DocumentFragment {
        return objectRef.createDocumentFragment!().fromJSValue()
    }

    public func createTextNode(data: String) -> Text {
        return objectRef.createTextNode!(data.jsValue()).fromJSValue()
    }

    public func createCDATASection(data: String) -> CDATASection {
        return objectRef.createCDATASection!(data.jsValue()).fromJSValue()
    }

    public func createComment(data: String) -> Comment {
        return objectRef.createComment!(data.jsValue()).fromJSValue()
    }

    public func createProcessingInstruction(target: String, data: String) -> ProcessingInstruction {
        return objectRef.createProcessingInstruction!(target.jsValue(), data.jsValue()).fromJSValue()
    }

    public func importNode(node: Node, deep: Bool = false) -> Node {
        return objectRef.importNode!(node.jsValue(), deep.jsValue()).fromJSValue()
    }

    public func adoptNode(node: Node) -> Node {
        return objectRef.adoptNode!(node.jsValue()).fromJSValue()
    }

    public func createAttribute(localName: String) -> Attr {
        return objectRef.createAttribute!(localName.jsValue()).fromJSValue()
    }

    public func createAttributeNS(namespace: String?, qualifiedName: String) -> Attr {
        return objectRef.createAttributeNS!(namespace.jsValue(), qualifiedName.jsValue()).fromJSValue()
    }

    public func createEvent(interface: String) -> Event {
        return objectRef.createEvent!(interface.jsValue()).fromJSValue()
    }

    public func createRange() -> Range {
        return objectRef.createRange!().fromJSValue()
    }

    public func createNodeIterator<NodeFilterType: NodeFilter>(root: Node, whatToShow: UInt32 = 4_294_967_295, filter: NodeFilterType? = nil) -> NodeIterator {
        return objectRef.createNodeIterator!(root.jsValue(), whatToShow.jsValue(), filter.jsValue()).fromJSValue()
    }

    public func createTreeWalker<NodeFilterType: NodeFilter>(root: Node, whatToShow: UInt32 = 4_294_967_295, filter: NodeFilterType? = nil) -> TreeWalker {
        return objectRef.createTreeWalker!(root.jsValue(), whatToShow.jsValue(), filter.jsValue()).fromJSValue()
    }
}
