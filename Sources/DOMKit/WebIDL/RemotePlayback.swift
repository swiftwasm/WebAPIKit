// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RemotePlayback: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.RemotePlayback].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _onconnecting = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onconnecting)
        _onconnect = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onconnect)
        _ondisconnect = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ondisconnect)
        super.init(unsafelyWrapping: jsObject)
    }

    public func watchAvailability(callback: RemotePlaybackAvailabilityCallback) -> JSPromise {
        jsObject[Strings.watchAvailability]!(callback.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func watchAvailability(callback: RemotePlaybackAvailabilityCallback) async throws -> Int32 {
        let _promise: JSPromise = jsObject[Strings.watchAvailability]!(callback.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func cancelWatchAvailability(id: Int32? = nil) -> JSPromise {
        jsObject[Strings.cancelWatchAvailability]!(id?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func cancelWatchAvailability(id: Int32? = nil) async throws {
        let _promise: JSPromise = jsObject[Strings.cancelWatchAvailability]!(id?.jsValue() ?? .undefined).fromJSValue()!
        _ = try await _promise.get()
    }

    @ReadonlyAttribute
    public var state: RemotePlaybackState

    @ClosureAttribute.Optional1
    public var onconnecting: EventHandler

    @ClosureAttribute.Optional1
    public var onconnect: EventHandler

    @ClosureAttribute.Optional1
    public var ondisconnect: EventHandler

    public func prompt() -> JSPromise {
        jsObject[Strings.prompt]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func prompt() async throws {
        let _promise: JSPromise = jsObject[Strings.prompt]!().fromJSValue()!
        _ = try await _promise.get()
    }
}