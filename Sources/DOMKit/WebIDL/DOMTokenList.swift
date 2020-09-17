
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class DOMTokenList: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global.DOMTokenList.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        self.jsObject = jsObject
    }

    public typealias Element = String

    @ReadonlyAttribute
    public var length: UInt32

    public func contains(token: String) -> Bool {
        return jsObject.contains!(token.jsValue()).fromJSValue()!
    }

    public func add(tokens: String...) {
        _ = jsObject.add!(tokens.jsValue())
    }

    public func add() {
        _ = jsObject.add!()
    }

    public func remove(tokens: String...) {
        _ = jsObject.remove!(tokens.jsValue())
    }

    public func remove() {
        _ = jsObject.remove!()
    }

    public func toggle(token: String, force: Bool) -> Bool {
        return jsObject.toggle!(token.jsValue(), force.jsValue()).fromJSValue()!
    }

    public func toggle(token: String) -> Bool {
        return jsObject.toggle!(token.jsValue()).fromJSValue()!
    }

    public func replace(token: String, newToken: String) -> Bool {
        return jsObject.replace!(token.jsValue(), newToken.jsValue()).fromJSValue()!
    }

    public func supports(token: String) -> Bool {
        return jsObject.supports!(token.jsValue()).fromJSValue()!
    }

    public func makeIterator() -> ValueIterableIterator<DOMTokenList> { return ValueIterableIterator(sequence: self) }
}
