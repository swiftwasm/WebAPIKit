// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ReadableStreamDefaultReader: JSBridgedClass, ReadableStreamGenericReader {
    public class var constructor: JSFunction { JSObject.global.ReadableStreamDefaultReader.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init(stream: ReadableStream) {
        self.init(unsafelyWrapping: Self.constructor.new(stream.jsValue()))
    }

    public func read() -> JSPromise {
        jsObject["read"]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func read() async throws -> ReadableStreamDefaultReadResult {
        let _promise: JSPromise = jsObject["read"]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func releaseLock() {
        _ = jsObject["releaseLock"]!()
    }
}
