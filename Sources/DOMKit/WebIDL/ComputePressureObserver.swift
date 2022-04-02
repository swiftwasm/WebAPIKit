// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ComputePressureObserver: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.ComputePressureObserver].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _supportedSources = ReadonlyAttribute(jsObject: jsObject, name: Strings.supportedSources)
        self.jsObject = jsObject
    }

    // XXX: constructor is ignored

    @inlinable public func observe(source: ComputePressureSource) {
        let this = jsObject
        _ = this[Strings.observe].function!(this: this, arguments: [source.jsValue()])
    }

    @inlinable public func unobserve(source: ComputePressureSource) {
        let this = jsObject
        _ = this[Strings.unobserve].function!(this: this, arguments: [source.jsValue()])
    }

    @inlinable public func disconnect() {
        let this = jsObject
        _ = this[Strings.disconnect].function!(this: this, arguments: [])
    }

    @inlinable public func takeRecords() -> [ComputePressureRecord] {
        let this = jsObject
        return this[Strings.takeRecords].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadonlyAttribute
    public var supportedSources: [ComputePressureSource]

    @inlinable public static func requestPermission() -> JSPromise {
        let this = constructor
        return this[Strings.requestPermission].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public static func requestPermission() async throws -> PermissionState {
        let this = constructor
        let _promise: JSPromise = this[Strings.requestPermission].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
