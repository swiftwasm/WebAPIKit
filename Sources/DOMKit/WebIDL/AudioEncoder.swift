// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AudioEncoder: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.AudioEncoder].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _encodeQueueSize = ReadonlyAttribute(jsObject: jsObject, name: Strings.encodeQueueSize)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(init: AudioEncoderInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [`init`.jsValue]))
    }

    @ReadonlyAttribute
    public var state: CodecState

    @ReadonlyAttribute
    public var encodeQueueSize: UInt32

    @inlinable public func configure(config: AudioEncoderConfig) {
        let this = jsObject
        _ = this[Strings.configure].function!(this: this, arguments: [config.jsValue])
    }

    @inlinable public func encode(data: AudioData) {
        let this = jsObject
        _ = this[Strings.encode].function!(this: this, arguments: [data.jsValue])
    }

    @inlinable public func flush() -> JSPromise {
        let this = jsObject
        return this[Strings.flush].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func flush() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.flush].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.value
    }

    @inlinable public func reset() {
        let this = jsObject
        _ = this[Strings.reset].function!(this: this, arguments: [])
    }

    @inlinable public func close() {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [])
    }

    @inlinable public static func isConfigSupported(config: AudioEncoderConfig) -> JSPromise {
        let this = constructor
        return this[Strings.isConfigSupported].function!(this: this, arguments: [config.jsValue]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public static func isConfigSupported(config: AudioEncoderConfig) async throws -> AudioEncoderSupport {
        let this = constructor
        let _promise: JSPromise = this[Strings.isConfigSupported].function!(this: this, arguments: [config.jsValue]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }
}
