// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMImplementation: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.DOMImplementation].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public func createDocumentType(qualifiedName: String, publicId: String, systemId: String) -> DocumentType {
        let this = jsObject
        return this[Strings.createDocumentType].function!(this: this, arguments: [qualifiedName.jsValue(), publicId.jsValue(), systemId.jsValue()]).fromJSValue()!
    }

    @inlinable public func createDocument(namespace: String?, qualifiedName: String, doctype: DocumentType? = nil) -> XMLDocument {
        let this = jsObject
        return this[Strings.createDocument].function!(this: this, arguments: [namespace.jsValue(), qualifiedName.jsValue(), doctype?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func createHTMLDocument(title: String? = nil) -> Document {
        let this = jsObject
        return this[Strings.createHTMLDocument].function!(this: this, arguments: [title?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func hasFeature() -> Bool {
        let this = jsObject
        return this[Strings.hasFeature].function!(this: this, arguments: []).fromJSValue()!
    }
}
