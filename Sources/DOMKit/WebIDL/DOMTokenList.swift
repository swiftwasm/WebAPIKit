// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMTokenList: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global[Strings.DOMTokenList].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: Int) -> String? {
        jsObject[key].fromJSValue()
    }

    public func contains(token: String) -> Bool {
        jsObject[Strings.contains]!(token.jsValue()).fromJSValue()!
    }

    public func add(tokens: String...) {
        _ = jsObject[Strings.add]!(tokens.jsValue())
    }

    public func remove(tokens: String...) {
        _ = jsObject[Strings.remove]!(tokens.jsValue())
    }

    public func toggle(token: String, force: Bool? = nil) -> Bool {
        jsObject[Strings.toggle]!(token.jsValue(), force?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func replace(token: String, newToken: String) -> Bool {
        jsObject[Strings.replace]!(token.jsValue(), newToken.jsValue()).fromJSValue()!
    }

    public func supports(token: String) -> Bool {
        jsObject[Strings.supports]!(token.jsValue()).fromJSValue()!
    }

    @ReadWriteAttribute
    public var value: String

    public typealias Element = String
    public func makeIterator() -> ValueIterableIterator<DOMTokenList> {
        ValueIterableIterator(sequence: self)
    }
}
