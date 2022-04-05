// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RemotePlayback: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.RemotePlayback].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _onconnecting = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onconnecting)
        _onconnect = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onconnect)
        _ondisconnect = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ondisconnect)
        super.init(unsafelyWrapping: jsObject)
    }

    // XXX: member 'watchAvailability' is ignored

    // XXX: member 'watchAvailability' is ignored

    @inlinable public func cancelWatchAvailability(id: Int32? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.cancelWatchAvailability].function!(this: this, arguments: [id?.jsValue ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func cancelWatchAvailability(id: Int32? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.cancelWatchAvailability].function!(this: this, arguments: [id?.jsValue ?? .undefined]).fromJSValue()!
        _ = try await _promise.value
    }

    @ReadonlyAttribute
    public var state: RemotePlaybackState

    @ClosureAttribute1Optional
    public var onconnecting: EventHandler

    @ClosureAttribute1Optional
    public var onconnect: EventHandler

    @ClosureAttribute1Optional
    public var ondisconnect: EventHandler

    @inlinable public func prompt() -> JSPromise {
        let this = jsObject
        return this[Strings.prompt].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func prompt() async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.prompt].function!(this: this, arguments: []).fromJSValue()!
        _ = try await _promise.value
    }
}
