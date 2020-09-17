
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class FormData: JSBridgedClass, KeyValueSequence {
    public class var constructor: JSFunction { JSObject.global.FormData.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public typealias Value = FormDataEntryValue

    public convenience init(form: HTMLFormElement) {
        self.init(unsafelyWrapping: FormData.constructor.new(form.jsValue()))
    }

    public convenience init() {
        self.init(unsafelyWrapping: FormData.constructor.new())
    }

    public func append(name: String, value: String) {
        _ = jsObject.append!(name.jsValue(), value.jsValue())
    }

    public func append(name: String, blobValue: Blob, filename: String) {
        _ = jsObject.append!(name.jsValue(), blobValue.jsValue(), filename.jsValue())
    }

    public func append(name: String, blobValue: Blob) {
        _ = jsObject.append!(name.jsValue(), blobValue.jsValue())
    }

    public func delete(name: String) {
        _ = jsObject.delete!(name.jsValue())
    }

    public func get(name: String) -> FormDataEntryValue? {
        return jsObject.get!(name.jsValue()).fromJSValue()!
    }

    public func getAll(name: String) -> [FormDataEntryValue] {
        return jsObject.getAll!(name.jsValue()).fromJSValue()!
    }

    public func has(name: String) -> Bool {
        return jsObject.has!(name.jsValue()).fromJSValue()!
    }

    public func set(name: String, value: String) {
        _ = jsObject.set!(name.jsValue(), value.jsValue())
    }

    public func set(name: String, blobValue: Blob, filename: String) {
        _ = jsObject.set!(name.jsValue(), blobValue.jsValue(), filename.jsValue())
    }

    public func set(name: String, blobValue: Blob) {
        _ = jsObject.set!(name.jsValue(), blobValue.jsValue())
    }

    public func makeIterator() -> PairIterableIterator<FormData> { return PairIterableIterator(sequence: self) }
}
