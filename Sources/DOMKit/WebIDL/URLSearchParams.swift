// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class URLSearchParams: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global[Strings.URLSearchParams].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(init: __UNSUPPORTED_UNION__? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(`init`?.jsValue() ?? .undefined))
    }

    public func append(name: String, value: String) {
        _ = jsObject[Strings.append]!(name.jsValue(), value.jsValue())
    }

    public func delete(name: String) {
        _ = jsObject[Strings.delete]!(name.jsValue())
    }

    public func get(name: String) -> String? {
        jsObject[Strings.get]!(name.jsValue()).fromJSValue()!
    }

    public func getAll(name: String) -> [String] {
        jsObject[Strings.getAll]!(name.jsValue()).fromJSValue()!
    }

    public func has(name: String) -> Bool {
        jsObject[Strings.has]!(name.jsValue()).fromJSValue()!
    }

    public func set(name: String, value: String) {
        _ = jsObject[Strings.set]!(name.jsValue(), value.jsValue())
    }

    public func sort() {
        _ = jsObject[Strings.sort]!()
    }

    public typealias Element = String
    public func makeIterator() -> ValueIterableIterator<URLSearchParams> {
        ValueIterableIterator(sequence: self)
    }

    public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }
}