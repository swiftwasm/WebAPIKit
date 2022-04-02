// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ReadableStream: JSBridgedClass, AsyncSequence {
    public class var constructor: JSFunction { JSObject.global[Strings.ReadableStream].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _locked = ReadonlyAttribute(jsObject: jsObject, name: Strings.locked)
        self.jsObject = jsObject
    }

    public convenience init(underlyingSource: JSObject? = nil, strategy: QueuingStrategy? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [underlyingSource?.jsValue() ?? .undefined, strategy?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var locked: Bool

    public func cancel(reason: JSValue? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.cancel].function!(this: this, arguments: [reason?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func cancel(reason: JSValue? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.cancel].function!(this: this, arguments: [reason?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func getReader(options: ReadableStreamGetReaderOptions? = nil) -> ReadableStreamReader {
        let this = jsObject
        return this[Strings.getReader].function!(this: this, arguments: [options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func pipeThrough(transform: ReadableWritablePair, options: StreamPipeOptions? = nil) -> Self {
        let this = jsObject
        return this[Strings.pipeThrough].function!(this: this, arguments: [transform.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    public func pipeTo(destination: WritableStream, options: StreamPipeOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.pipeTo].function!(this: this, arguments: [destination.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func pipeTo(destination: WritableStream, options: StreamPipeOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.pipeTo].function!(this: this, arguments: [destination.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func tee() -> [ReadableStream] {
        let this = jsObject
        return this[Strings.tee].function!(this: this, arguments: []).fromJSValue()!
    }

    public typealias Element = JSValue
    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func makeAsyncIterator() -> ValueIterableAsyncIterator<ReadableStream> {
        ValueIterableAsyncIterator(sequence: self)
    }
}
