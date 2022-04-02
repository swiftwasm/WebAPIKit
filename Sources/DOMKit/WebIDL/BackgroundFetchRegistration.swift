// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BackgroundFetchRegistration: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.BackgroundFetchRegistration].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _uploadTotal = ReadonlyAttribute(jsObject: jsObject, name: Strings.uploadTotal)
        _uploaded = ReadonlyAttribute(jsObject: jsObject, name: Strings.uploaded)
        _downloadTotal = ReadonlyAttribute(jsObject: jsObject, name: Strings.downloadTotal)
        _downloaded = ReadonlyAttribute(jsObject: jsObject, name: Strings.downloaded)
        _result = ReadonlyAttribute(jsObject: jsObject, name: Strings.result)
        _failureReason = ReadonlyAttribute(jsObject: jsObject, name: Strings.failureReason)
        _recordsAvailable = ReadonlyAttribute(jsObject: jsObject, name: Strings.recordsAvailable)
        _onprogress = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onprogress)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var uploadTotal: UInt64

    @ReadonlyAttribute
    public var uploaded: UInt64

    @ReadonlyAttribute
    public var downloadTotal: UInt64

    @ReadonlyAttribute
    public var downloaded: UInt64

    @ReadonlyAttribute
    public var result: BackgroundFetchResult

    @ReadonlyAttribute
    public var failureReason: BackgroundFetchFailureReason

    @ReadonlyAttribute
    public var recordsAvailable: Bool

    @ClosureAttribute1Optional
    public var onprogress: EventHandler

    public func abort() -> JSPromise {
        jsObject[Strings.abort]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func abort() async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.abort]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func match(request: RequestInfo, options: CacheQueryOptions? = nil) -> JSPromise {
        jsObject[Strings.match]!(request.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func match(request: RequestInfo, options: CacheQueryOptions? = nil) async throws -> BackgroundFetchRecord {
        let _promise: JSPromise = jsObject[Strings.match]!(request.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func matchAll(request: RequestInfo? = nil, options: CacheQueryOptions? = nil) -> JSPromise {
        jsObject[Strings.matchAll]!(request?.jsValue() ?? .undefined, options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func matchAll(request: RequestInfo? = nil, options: CacheQueryOptions? = nil) async throws -> [BackgroundFetchRecord] {
        let _promise: JSPromise = jsObject[Strings.matchAll]!(request?.jsValue() ?? .undefined, options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
