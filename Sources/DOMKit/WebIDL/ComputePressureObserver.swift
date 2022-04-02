// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ComputePressureObserver: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.ComputePressureObserver].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _supportedSources = ReadonlyAttribute(jsObject: jsObject, name: Strings.supportedSources)
        self.jsObject = jsObject
    }

    // XXX: constructor is ignored

    public func observe(source: ComputePressureSource) {
        _ = jsObject[Strings.observe]!(source.jsValue())
    }

    public func unobserve(source: ComputePressureSource) {
        _ = jsObject[Strings.unobserve]!(source.jsValue())
    }

    public func disconnect() {
        _ = jsObject[Strings.disconnect]!()
    }

    public func takeRecords() -> [ComputePressureRecord] {
        jsObject[Strings.takeRecords]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var supportedSources: [ComputePressureSource]

    public static func requestPermission() -> JSPromise {
        constructor[Strings.requestPermission]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func requestPermission() async throws -> PermissionState {
        let _promise: JSPromise = constructor[Strings.requestPermission]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
