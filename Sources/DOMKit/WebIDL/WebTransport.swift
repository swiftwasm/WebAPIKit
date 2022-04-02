// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WebTransport: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.WebTransport].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ready = ReadonlyAttribute(jsObject: jsObject, name: Strings.ready)
        _closed = ReadonlyAttribute(jsObject: jsObject, name: Strings.closed)
        _datagrams = ReadonlyAttribute(jsObject: jsObject, name: Strings.datagrams)
        _incomingBidirectionalStreams = ReadonlyAttribute(jsObject: jsObject, name: Strings.incomingBidirectionalStreams)
        _incomingUnidirectionalStreams = ReadonlyAttribute(jsObject: jsObject, name: Strings.incomingUnidirectionalStreams)
        self.jsObject = jsObject
    }

    public convenience init(url: String, options: WebTransportOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [url.jsValue(), options?.jsValue() ?? .undefined]))
    }

    public func getStats() -> JSPromise {
        let this = jsObject
        return this[Strings.getStats].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getStats() async throws -> WebTransportStats {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getStats].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var ready: JSPromise

    @ReadonlyAttribute
    public var closed: JSPromise

    public func close(closeInfo: WebTransportCloseInfo? = nil) {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [closeInfo?.jsValue() ?? .undefined])
    }

    @ReadonlyAttribute
    public var datagrams: WebTransportDatagramDuplexStream

    public func createBidirectionalStream() -> JSPromise {
        let this = jsObject
        return this[Strings.createBidirectionalStream].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func createBidirectionalStream() async throws -> WebTransportBidirectionalStream {
        let this = jsObject
        let _promise: JSPromise = this[Strings.createBidirectionalStream].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var incomingBidirectionalStreams: ReadableStream

    public func createUnidirectionalStream() -> JSPromise {
        let this = jsObject
        return this[Strings.createUnidirectionalStream].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func createUnidirectionalStream() async throws -> WritableStream {
        let this = jsObject
        let _promise: JSPromise = this[Strings.createUnidirectionalStream].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var incomingUnidirectionalStreams: ReadableStream
}
