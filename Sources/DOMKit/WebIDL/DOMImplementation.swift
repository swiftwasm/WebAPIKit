
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DOMImplementation: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DOMImplementation.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func createDocumentType(qualifiedName: String, publicId: String, systemId: String) -> DocumentType {
        return jsObject.createDocumentType!(qualifiedName.jsValue(), publicId.jsValue(), systemId.jsValue()).fromJSValue()!
    }

    public func createDocument(namespace: String?, qualifiedName: String, doctype: DocumentType? = nil) -> XMLDocument {
        return jsObject.createDocument!(namespace.jsValue(), qualifiedName.jsValue(), doctype.jsValue()).fromJSValue()!
    }

    public func createHTMLDocument(title: String) -> Document {
        return jsObject.createHTMLDocument!(title.jsValue()).fromJSValue()!
    }

    public func createHTMLDocument() -> Document {
        return jsObject.createHTMLDocument!().fromJSValue()!
    }

    public func hasFeature() -> Bool {
        return jsObject.hasFeature!().fromJSValue()!
    }
}
