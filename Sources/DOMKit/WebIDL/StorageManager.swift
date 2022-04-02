// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StorageManager: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.StorageManager].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func persisted() -> JSPromise {
        jsObject[Strings.persisted]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func persisted() async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.persisted]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func persist() -> JSPromise {
        jsObject[Strings.persist]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func persist() async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.persist]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func estimate() -> JSPromise {
        jsObject[Strings.estimate]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func estimate() async throws -> StorageEstimate {
        let _promise: JSPromise = jsObject[Strings.estimate]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getDirectory() -> JSPromise {
        jsObject[Strings.getDirectory]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getDirectory() async throws -> FileSystemDirectoryHandle {
        let _promise: JSPromise = jsObject[Strings.getDirectory]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}