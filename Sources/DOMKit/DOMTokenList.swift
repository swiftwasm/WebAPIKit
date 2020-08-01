
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class DOMTokenList: JSBridgedType, Sequence {
    public class var classRef: JSFunctionRef { JSObjectRef.global.DOMTokenList.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    public typealias Element = String

    @ReadonlyAttribute
    public var length: UInt32

    public func contains(token: String) -> Bool {
        return objectRef.contains!(token.jsValue()).fromJSValue()
    }

    public func add(tokens: String...) {
        _ = objectRef.add!(tokens.jsValue())
    }

    public func add() {
        _ = objectRef.add!()
    }

    public func remove(tokens: String...) {
        _ = objectRef.remove!(tokens.jsValue())
    }

    public func remove() {
        _ = objectRef.remove!()
    }

    public func toggle(token: String, force: Bool) -> Bool {
        return objectRef.toggle!(token.jsValue(), force.jsValue()).fromJSValue()
    }

    public func toggle(token: String) -> Bool {
        return objectRef.toggle!(token.jsValue()).fromJSValue()
    }

    public func replace(token: String, newToken: String) -> Bool {
        return objectRef.replace!(token.jsValue(), newToken.jsValue()).fromJSValue()
    }

    public func supports(token: String) -> Bool {
        return objectRef.supports!(token.jsValue()).fromJSValue()
    }

    public func makeIterator() -> ValueIterableIterator<DOMTokenList> { return ValueIterableIterator(sequence: self) }
}
