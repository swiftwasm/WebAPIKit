// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FormData: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global.FormData.function! }

    private enum Keys {
        static let append: JSString = "append"
        static let delete: JSString = "delete"
        static let get: JSString = "get"
        static let getAll: JSString = "getAll"
        static let has: JSString = "has"
        static let set: JSString = "set"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(form: HTMLFormElement? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(form?.jsValue() ?? .undefined))
    }

    public func append(name: String, value: String) {
        jsObject[Keys.append]!(name.jsValue(), value.jsValue()).fromJSValue()!
    }

    public func append(name: String, blobValue: Blob, filename: String? = nil) {
        jsObject[Keys.append]!(name.jsValue(), blobValue.jsValue(), filename?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func delete(name: String) {
        jsObject[Keys.delete]!(name.jsValue()).fromJSValue()!
    }

    public func get(name: String) -> FormDataEntryValue? {
        jsObject[Keys.get]!(name.jsValue()).fromJSValue()!
    }

    public func getAll(name: String) -> [FormDataEntryValue] {
        jsObject[Keys.getAll]!(name.jsValue()).fromJSValue()!
    }

    public func has(name: String) -> Bool {
        jsObject[Keys.has]!(name.jsValue()).fromJSValue()!
    }

    public func set(name: String, value: String) {
        jsObject[Keys.set]!(name.jsValue(), value.jsValue()).fromJSValue()!
    }

    public func set(name: String, blobValue: Blob, filename: String? = nil) {
        jsObject[Keys.set]!(name.jsValue(), blobValue.jsValue(), filename?.jsValue() ?? .undefined).fromJSValue()!
    }

    public typealias Element = String
    public func makeIterator() -> ValueIterableIterator<FormData> {
        ValueIterableIterator(sequence: self)
    }
}
