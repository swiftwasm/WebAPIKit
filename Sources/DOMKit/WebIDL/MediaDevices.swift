// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaDevices: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.MediaDevices].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ondevicechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ondevicechange)
        super.init(unsafelyWrapping: jsObject)
    }

    public func selectAudioOutput(options: AudioOutputOptions? = nil) -> JSPromise {
        jsObject[Strings.selectAudioOutput]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func selectAudioOutput(options: AudioOutputOptions? = nil) async throws -> MediaDeviceInfo {
        let _promise: JSPromise = jsObject[Strings.selectAudioOutput]!(options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func produceCropTarget(element: HTMLElement) -> JSPromise {
        jsObject[Strings.produceCropTarget]!(element.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func produceCropTarget(element: HTMLElement) async throws -> CropTarget {
        let _promise: JSPromise = jsObject[Strings.produceCropTarget]!(element.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ClosureAttribute.Optional1
    public var ondevicechange: EventHandler

    public func enumerateDevices() -> JSPromise {
        jsObject[Strings.enumerateDevices]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func enumerateDevices() async throws -> [MediaDeviceInfo] {
        let _promise: JSPromise = jsObject[Strings.enumerateDevices]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getSupportedConstraints() -> MediaTrackSupportedConstraints {
        jsObject[Strings.getSupportedConstraints]!().fromJSValue()!
    }

    public func getUserMedia(constraints: MediaStreamConstraints? = nil) -> JSPromise {
        jsObject[Strings.getUserMedia]!(constraints?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getUserMedia(constraints: MediaStreamConstraints? = nil) async throws -> MediaStream {
        let _promise: JSPromise = jsObject[Strings.getUserMedia]!(constraints?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getDisplayMedia(constraints: DisplayMediaStreamConstraints? = nil) -> JSPromise {
        jsObject[Strings.getDisplayMedia]!(constraints?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getDisplayMedia(constraints: DisplayMediaStreamConstraints? = nil) async throws -> MediaStream {
        let _promise: JSPromise = jsObject[Strings.getDisplayMedia]!(constraints?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
