// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USB: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.USB].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onconnect = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onconnect)
        _ondisconnect = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ondisconnect)
        super.init(unsafelyWrapping: jsObject)
    }

    @ClosureAttribute.Optional1
    public var onconnect: EventHandler

    @ClosureAttribute.Optional1
    public var ondisconnect: EventHandler

    public func getDevices() -> JSPromise {
        jsObject[Strings.getDevices]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getDevices() async throws -> [USBDevice] {
        let _promise: JSPromise = jsObject[Strings.getDevices]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func requestDevice(options: USBDeviceRequestOptions) -> JSPromise {
        jsObject[Strings.requestDevice]!(options.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func requestDevice(options: USBDeviceRequestOptions) async throws -> USBDevice {
        let _promise: JSPromise = jsObject[Strings.requestDevice]!(options.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
