// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUAdapter: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.GPUAdapter].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _features = ReadonlyAttribute(jsObject: jsObject, name: Strings.features)
        _limits = ReadonlyAttribute(jsObject: jsObject, name: Strings.limits)
        _isFallbackAdapter = ReadonlyAttribute(jsObject: jsObject, name: Strings.isFallbackAdapter)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var features: GPUSupportedFeatures

    @ReadonlyAttribute
    public var limits: GPUSupportedLimits

    @ReadonlyAttribute
    public var isFallbackAdapter: Bool

    public func requestDevice(descriptor: GPUDeviceDescriptor? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.requestDevice].function!(this: this, arguments: [descriptor?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func requestDevice(descriptor: GPUDeviceDescriptor? = nil) async throws -> GPUDevice {
        let this = jsObject
        let _promise: JSPromise = this[Strings.requestDevice].function!(this: this, arguments: [descriptor?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
