
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DOMImplementation: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.DOMImplementation.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func createDocumentType(qualifiedName: String, publicId: String, systemId: String) -> DocumentType {
        return objectRef.createDocumentType!(qualifiedName.jsValue(), publicId.jsValue(), systemId.jsValue()).fromJSValue()
    }

    public func createDocument(namespace: String?, qualifiedName: String, doctype: DocumentType? = nil) -> XMLDocument {
        return objectRef.createDocument!(namespace.jsValue(), qualifiedName.jsValue(), doctype.jsValue()).fromJSValue()
    }

    public func createHTMLDocument(title: String) -> Document {
        return objectRef.createHTMLDocument!(title.jsValue()).fromJSValue()
    }

    public func createHTMLDocument() -> Document {
        return objectRef.createHTMLDocument!().fromJSValue()
    }

    public func hasFeature() -> Bool {
        return objectRef.hasFeature!().fromJSValue()
    }
}
