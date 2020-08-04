
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class FormData: JSBridgedType, KeyValueSequence {
    public class var classRef: JSFunctionRef { JSObjectRef.global.FormData.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public typealias Value = FormDataEntryValue

    public convenience init(form: HTMLFormElement) {
        self.init(objectRef: FormData.classRef(new: JSValue(from: form)))
    }

    public convenience init() {
        self.init(objectRef: FormData.classRef(.new))
    }

    public func append(name: String, value: String) {
        _ = objectRef.append!(JSValue(from: name), JSValue(from: value))
    }

    public func append(name: String, blobValue: Blob, filename: String) {
        _ = objectRef.append!(JSValue(from: name), JSValue(from: blobValue), JSValue(from: filename))
    }

    public func append(name: String, blobValue: Blob) {
        _ = objectRef.append!(JSValue(from: name), JSValue(from: blobValue))
    }

    public func delete(name: String) {
        _ = objectRef.delete!(JSValue(from: name))
    }

    public func get(name: String) -> FormDataEntryValue? {
        return objectRef.get!(JSValue(from: name)).fromJSValue()
    }

    public func getAll(name: String) -> [FormDataEntryValue] {
        return objectRef.getAll!(JSValue(from: name)).fromJSValue()
    }

    public func has(name: String) -> Bool {
        return objectRef.has!(JSValue(from: name)).fromJSValue()
    }

    public func set(name: String, value: String) {
        _ = objectRef.set!(JSValue(from: name), JSValue(from: value))
    }

    public func set(name: String, blobValue: Blob, filename: String) {
        _ = objectRef.set!(JSValue(from: name), JSValue(from: blobValue), JSValue(from: filename))
    }

    public func set(name: String, blobValue: Blob) {
        _ = objectRef.set!(JSValue(from: name), JSValue(from: blobValue))
    }

    public func makeIterator() -> PairIterableIterator<FormData> { return PairIterableIterator(sequence: self) }
}
