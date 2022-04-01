// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMImplementation: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DOMImplementation.function! }

    private enum Keys {
        static let createDocument: JSString = "createDocument"
        static let hasFeature: JSString = "hasFeature"
        static let createHTMLDocument: JSString = "createHTMLDocument"
        static let createDocumentType: JSString = "createDocumentType"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func createDocumentType(qualifiedName: String, publicId: String, systemId: String) -> DocumentType {
        jsObject[Keys.createDocumentType]!(qualifiedName.jsValue(), publicId.jsValue(), systemId.jsValue()).fromJSValue()!
    }

    public func createDocument(namespace: String?, qualifiedName: String, doctype: DocumentType? = nil) -> XMLDocument {
        jsObject[Keys.createDocument]!(namespace.jsValue(), qualifiedName.jsValue(), doctype?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func createHTMLDocument(title: String? = nil) -> Document {
        jsObject[Keys.createHTMLDocument]!(title?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func hasFeature() -> Bool {
        jsObject[Keys.hasFeature]!().fromJSValue()!
    }
}
