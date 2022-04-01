// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Blob: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.Blob.function! }

    private enum Keys {
        static let slice: JSString = "slice"
        static let size: JSString = "size"
        static let stream: JSString = "stream"
        static let arrayBuffer: JSString = "arrayBuffer"
        static let text: JSString = "text"
        static let type: JSString = "type"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _size = ReadonlyAttribute(jsObject: jsObject, name: Keys.size)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Keys.type)
        self.jsObject = jsObject
    }

    public convenience init(blobParts: [BlobPart]? = nil, options: BlobPropertyBag? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(blobParts?.jsValue() ?? .undefined, options?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var size: UInt64

    @ReadonlyAttribute
    public var type: String

    public func slice(start: Int64? = nil, end: Int64? = nil, contentType: String? = nil) -> Self {
        jsObject[Keys.slice]!(start?.jsValue() ?? .undefined, end?.jsValue() ?? .undefined, contentType?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func stream() -> ReadableStream {
        jsObject[Keys.stream]!().fromJSValue()!
    }

    public func text() -> JSPromise {
        jsObject[Keys.text]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func text() async throws -> String {
        let _promise: JSPromise = jsObject[Keys.text]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func arrayBuffer() -> JSPromise {
        jsObject[Keys.arrayBuffer]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func arrayBuffer() async throws -> ArrayBuffer {
        let _promise: JSPromise = jsObject[Keys.arrayBuffer]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
