
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class FormData: JSBridgedType, KeyValueSequence {
    public class var classRef: JSFunctionRef { JSObjectRef.global.FormData.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public typealias Value = FormDataEntryValue

    public convenience init(form: HTMLFormElement) {
        self.init(objectRef: FormData.classRef.new(form.jsValue()))
    }

    public convenience init() {
        self.init(objectRef: FormData.classRef.new())
    }

    public func append(name: String, value: String) {
        _ = objectRef.append!(name.jsValue(), value.jsValue())
    }

    public func append(name: String, blobValue: Blob, filename: String) {
        _ = objectRef.append!(name.jsValue(), blobValue.jsValue(), filename.jsValue())
    }

    public func append(name: String, blobValue: Blob) {
        _ = objectRef.append!(name.jsValue(), blobValue.jsValue())
    }

    public func delete(name: String) {
        _ = objectRef.delete!(name.jsValue())
    }

    public func get(name: String) -> FormDataEntryValue? {
        return objectRef.get!(name.jsValue()).fromJSValue()
    }

    public func getAll(name: String) -> [FormDataEntryValue] {
        return objectRef.getAll!(name.jsValue()).fromJSValue()
    }

    public func has(name: String) -> Bool {
        return objectRef.has!(name.jsValue()).fromJSValue()
    }

    public func set(name: String, value: String) {
        _ = objectRef.set!(name.jsValue(), value.jsValue())
    }

    public func set(name: String, blobValue: Blob, filename: String) {
        _ = objectRef.set!(name.jsValue(), blobValue.jsValue(), filename.jsValue())
    }

    public func set(name: String, blobValue: Blob) {
        _ = objectRef.set!(name.jsValue(), blobValue.jsValue())
    }

    public func makeIterator() -> PairIterableIterator<FormData> { return PairIterableIterator(sequence: self) }
}
