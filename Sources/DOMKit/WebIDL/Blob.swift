
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class Blob: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.Blob.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _size = ReadonlyAttribute(objectRef: objectRef, name: "size")
        _type = ReadonlyAttribute(objectRef: objectRef, name: "type")
        self.objectRef = objectRef
    }

    public convenience init(blobParts: [BlobPart], options: BlobPropertyBag = [:]) {
        self.init(objectRef: Blob.classRef(new: JSValue(from: blobParts), JSValue(from: options)))
    }

    public convenience init() {
        self.init(objectRef: Blob.classRef(.new))
    }

    @ReadonlyAttribute
    public var size: UInt64

    @ReadonlyAttribute
    public var type: String

    public func slice(start: Int64, end: Int64, contentType: String) -> Blob {
        return objectRef.slice!(JSValue(from: start), JSValue(from: end), JSValue(from: contentType)).fromJSValue()
    }

    public func slice(start: Int64, end: Int64) -> Blob {
        return objectRef.slice!(JSValue(from: start), JSValue(from: end)).fromJSValue()
    }

    public func slice(start: Int64) -> Blob {
        return objectRef.slice!(JSValue(from: start)).fromJSValue()
    }

    public func slice() -> Blob {
        return objectRef.slice!().fromJSValue()
    }

    public func stream() -> ReadableStream {
        return objectRef.stream!().fromJSValue()
    }

    public func text() -> Promise<String> {
        return objectRef.text!().fromJSValue()
    }

    public func arrayBuffer() -> Promise<ArrayBuffer> {
        return objectRef.arrayBuffer!().fromJSValue()
    }
}
