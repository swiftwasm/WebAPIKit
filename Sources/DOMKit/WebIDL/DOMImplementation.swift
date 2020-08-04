
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class DOMImplementation: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.DOMImplementation.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func createDocumentType(qualifiedName: String, publicId: String, systemId: String) -> DocumentType {
        return objectRef.createDocumentType!(JSValue(from: qualifiedName), JSValue(from: publicId), JSValue(from: systemId)).fromJSValue()
    }

    public func createDocument(namespace: String?, qualifiedName: String, doctype: DocumentType? = nil) -> XMLDocument {
        return objectRef.createDocument!(JSValue(from: namespace), JSValue(from: qualifiedName), JSValue(from: doctype)).fromJSValue()
    }

    public func createHTMLDocument(title: String) -> Document {
        return objectRef.createHTMLDocument!(JSValue(from: title)).fromJSValue()
    }

    public func createHTMLDocument() -> Document {
        return objectRef.createHTMLDocument!().fromJSValue()
    }

    public func hasFeature() -> Bool {
        return objectRef.hasFeature!().fromJSValue()
    }
}
