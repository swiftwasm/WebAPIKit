// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class URLSearchParams: JSBridgedClass, Sequence {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.URLSearchParams].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public convenience init(init: String_or_record_String_to_String_or_seq_of_seq_of_String? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [`init`?.jsValue() ?? .undefined]))
    }

    @inlinable public func append(name: String, value: String) {
        let this = jsObject
        _ = this[Strings.append].function!(this: this, arguments: [name.jsValue(), value.jsValue()])
    }

    @inlinable public func delete(name: String) {
        let this = jsObject
        _ = this[Strings.delete].function!(this: this, arguments: [name.jsValue()])
    }

    @inlinable public func get(name: String) -> String? {
        let this = jsObject
        return this[Strings.get].function!(this: this, arguments: [name.jsValue()]).fromJSValue()!
    }

    @inlinable public func getAll(name: String) -> [String] {
        let this = jsObject
        return this[Strings.getAll].function!(this: this, arguments: [name.jsValue()]).fromJSValue()!
    }

    @inlinable public func has(name: String) -> Bool {
        let this = jsObject
        return this[Strings.has].function!(this: this, arguments: [name.jsValue()]).fromJSValue()!
    }

    @inlinable public func set(name: String, value: String) {
        let this = jsObject
        _ = this[Strings.set].function!(this: this, arguments: [name.jsValue(), value.jsValue()])
    }

    @inlinable public func sort() {
        let this = jsObject
        _ = this[Strings.sort].function!(this: this, arguments: [])
    }

    public typealias Element = String
    public func makeIterator() -> ValueIterableIterator<URLSearchParams> {
        ValueIterableIterator(sequence: self)
    }

    @inlinable public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }
}
