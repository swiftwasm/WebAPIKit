// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaDevices: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.MediaDevices].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ondevicechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ondevicechange)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public func selectAudioOutput(options: AudioOutputOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.selectAudioOutput].function!(this: this, arguments: [options?.jsValue ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func selectAudioOutput(options: AudioOutputOptions? = nil) async throws -> MediaDeviceInfo {
        let this = jsObject
        let _promise: JSPromise = this[Strings.selectAudioOutput].function!(this: this, arguments: [options?.jsValue ?? .undefined]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable public func produceCropTarget(element: HTMLElement) -> JSPromise {
        let this = jsObject
        return this[Strings.produceCropTarget].function!(this: this, arguments: [element.jsValue]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func produceCropTarget(element: HTMLElement) async throws -> CropTarget {
        let this = jsObject
        let _promise: JSPromise = this[Strings.produceCropTarget].function!(this: this, arguments: [element.jsValue]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var ondevicechange: EventHandler

    @inlinable public func enumerateDevices() -> JSPromise {
        let this = jsObject
        return this[Strings.enumerateDevices].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func enumerateDevices() async throws -> [MediaDeviceInfo] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.enumerateDevices].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable public func getSupportedConstraints() -> MediaTrackSupportedConstraints {
        let this = jsObject
        return this[Strings.getSupportedConstraints].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func getUserMedia(constraints: MediaStreamConstraints? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.getUserMedia].function!(this: this, arguments: [constraints?.jsValue ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func getUserMedia(constraints: MediaStreamConstraints? = nil) async throws -> MediaStream {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getUserMedia].function!(this: this, arguments: [constraints?.jsValue ?? .undefined]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable public func getDisplayMedia(constraints: DisplayMediaStreamConstraints? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.getDisplayMedia].function!(this: this, arguments: [constraints?.jsValue ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func getDisplayMedia(constraints: DisplayMediaStreamConstraints? = nil) async throws -> MediaStream {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getDisplayMedia].function!(this: this, arguments: [constraints?.jsValue ?? .undefined]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }
}
