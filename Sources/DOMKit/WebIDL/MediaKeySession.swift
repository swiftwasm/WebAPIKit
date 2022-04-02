// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaKeySession: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.MediaKeySession].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _sessionId = ReadonlyAttribute(jsObject: jsObject, name: Strings.sessionId)
        _expiration = ReadonlyAttribute(jsObject: jsObject, name: Strings.expiration)
        _closed = ReadonlyAttribute(jsObject: jsObject, name: Strings.closed)
        _keyStatuses = ReadonlyAttribute(jsObject: jsObject, name: Strings.keyStatuses)
        _onkeystatuseschange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onkeystatuseschange)
        _onmessage = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onmessage)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var sessionId: String

    @ReadonlyAttribute
    public var expiration: Double

    @ReadonlyAttribute
    public var closed: JSPromise

    @ReadonlyAttribute
    public var keyStatuses: MediaKeyStatusMap

    @ClosureAttribute1Optional
    public var onkeystatuseschange: EventHandler

    @ClosureAttribute1Optional
    public var onmessage: EventHandler

    public func generateRequest(initDataType: String, initData: BufferSource) -> JSPromise {
        jsObject[Strings.generateRequest]!(initDataType.jsValue(), initData.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func generateRequest(initDataType: String, initData: BufferSource) async throws {
        let _promise: JSPromise = jsObject[Strings.generateRequest]!(initDataType.jsValue(), initData.jsValue()).fromJSValue()!
        _ = try await _promise.get()
    }

    public func load(sessionId: String) -> JSPromise {
        jsObject[Strings.load]!(sessionId.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func load(sessionId: String) async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.load]!(sessionId.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func update(response: BufferSource) -> JSPromise {
        jsObject[Strings.update]!(response.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func update(response: BufferSource) async throws {
        let _promise: JSPromise = jsObject[Strings.update]!(response.jsValue()).fromJSValue()!
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

    public func remove() -> JSPromise {
        jsObject[Strings.remove]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func remove() async throws {
        let _promise: JSPromise = jsObject[Strings.remove]!().fromJSValue()!
        _ = try await _promise.get()
    }
}
