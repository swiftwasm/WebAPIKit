// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HID: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.HID].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onconnect = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onconnect)
        _ondisconnect = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ondisconnect)
        super.init(unsafelyWrapping: jsObject)
    }

    @ClosureAttribute1Optional
    public var onconnect: EventHandler

    @ClosureAttribute1Optional
    public var ondisconnect: EventHandler

    @inlinable public func getDevices() -> JSPromise {
        let this = jsObject
        return this[Strings.getDevices].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func getDevices() async throws -> [HIDDevice] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getDevices].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @inlinable public func requestDevice(options: HIDDeviceRequestOptions) -> JSPromise {
        let this = jsObject
        return this[Strings.requestDevice].function!(this: this, arguments: [options.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func requestDevice(options: HIDDeviceRequestOptions) async throws -> [HIDDevice] {
        let this = jsObject
        let _promise: JSPromise = this[Strings.requestDevice].function!(this: this, arguments: [options.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
