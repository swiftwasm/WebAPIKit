
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

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
        return objectRef.contains!(JSValue(from: token)).fromJSValue()
    }

    public func add(tokens: String...) {
        _ = objectRef.add!(JSValue(from: tokens))
    }

    public func add() {
        _ = objectRef.add!()
    }

    public func remove(tokens: String...) {
        _ = objectRef.remove!(JSValue(from: tokens))
    }

    public func remove() {
        _ = objectRef.remove!()
    }

    public func toggle(token: String, force: Bool) -> Bool {
        return objectRef.toggle!(JSValue(from: token), JSValue(from: force)).fromJSValue()
    }

    public func toggle(token: String) -> Bool {
        return objectRef.toggle!(JSValue(from: token)).fromJSValue()
    }

    public func replace(token: String, newToken: String) -> Bool {
        return objectRef.replace!(JSValue(from: token), JSValue(from: newToken)).fromJSValue()
    }

    public func supports(token: String) -> Bool {
        return objectRef.supports!(JSValue(from: token)).fromJSValue()
    }

    public func makeIterator() -> ValueIterableIterator<DOMTokenList> { return ValueIterableIterator(sequence: self) }
}
