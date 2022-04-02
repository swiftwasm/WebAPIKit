// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XSLTProcessor: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.XSLTProcessor].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @inlinable public func importStylesheet(style: Node) {
        let this = jsObject
        _ = this[Strings.importStylesheet].function!(this: this, arguments: [style.jsValue()])
    }

    @inlinable public func transformToFragment(source: Node, output: Document) -> DocumentFragment {
        let this = jsObject
        return this[Strings.transformToFragment].function!(this: this, arguments: [source.jsValue(), output.jsValue()]).fromJSValue()!
    }

    @inlinable public func transformToDocument(source: Node) -> Document {
        let this = jsObject
        return this[Strings.transformToDocument].function!(this: this, arguments: [source.jsValue()]).fromJSValue()!
    }

    @inlinable public func setParameter(namespaceURI: String, localName: String, value: JSValue) {
        let this = jsObject
        _ = this[Strings.setParameter].function!(this: this, arguments: [namespaceURI.jsValue(), localName.jsValue(), value.jsValue()])
    }

    @inlinable public func getParameter(namespaceURI: String, localName: String) -> JSValue {
        let this = jsObject
        return this[Strings.getParameter].function!(this: this, arguments: [namespaceURI.jsValue(), localName.jsValue()]).fromJSValue()!
    }

    @inlinable public func removeParameter(namespaceURI: String, localName: String) {
        let this = jsObject
        _ = this[Strings.removeParameter].function!(this: this, arguments: [namespaceURI.jsValue(), localName.jsValue()])
    }

    @inlinable public func clearParameters() {
        let this = jsObject
        _ = this[Strings.clearParameters].function!(this: this, arguments: [])
    }

    @inlinable public func reset() {
        let this = jsObject
        _ = this[Strings.reset].function!(this: this, arguments: [])
    }
}
