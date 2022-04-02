// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WritableStreamDefaultWriter: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.WritableStreamDefaultWriter].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _closed = ReadonlyAttribute(jsObject: jsObject, name: Strings.closed)
        _desiredSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.desiredSize)
        _ready = ReadonlyAttribute(jsObject: jsObject, name: Strings.ready)
        self.jsObject = jsObject
    }

    public convenience init(stream: WritableStream) {
        self.init(unsafelyWrapping: Self.constructor.new(stream.jsValue()))
    }

    @ReadonlyAttribute
    public var closed: JSPromise

    @ReadonlyAttribute
    public var desiredSize: Double?

    @ReadonlyAttribute
    public var ready: JSPromise

    public func abort(reason: JSValue? = nil) -> JSPromise {
        jsObject[Strings.abort]!(reason?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func abort(reason: JSValue? = nil) async throws {
        let _promise: JSPromise = jsObject[Strings.abort]!(reason?.jsValue() ?? .undefined).fromJSValue()!
        _ = try await _promise.get()
    }

    public func close() -> JSPromise {
        jsObject[Strings.close]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func close() async throws {
        let _promise: JSPromise = jsObject[Strings.close]!().fromJSValue()!
        _ = try await _promise.get()
    }

    public func releaseLock() {
        _ = jsObject[Strings.releaseLock]!()
    }

    public func write(chunk: JSValue? = nil) -> JSPromise {
        jsObject[Strings.write]!(chunk?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func write(chunk: JSValue? = nil) async throws {
        let _promise: JSPromise = jsObject[Strings.write]!(chunk?.jsValue() ?? .undefined).fromJSValue()!
        _ = try await _promise.get()
    }
}
