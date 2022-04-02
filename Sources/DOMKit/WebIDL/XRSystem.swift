// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRSystem: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.XRSystem].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _ondevicechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.ondevicechange)
        super.init(unsafelyWrapping: jsObject)
    }

    public func isSessionSupported(mode: XRSessionMode) -> JSPromise {
        jsObject[Strings.isSessionSupported]!(mode.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func isSessionSupported(mode: XRSessionMode) async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.isSessionSupported]!(mode.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func requestSession(mode: XRSessionMode, options: XRSessionInit? = nil) -> JSPromise {
        jsObject[Strings.requestSession]!(mode.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func requestSession(mode: XRSessionMode, options: XRSessionInit? = nil) async throws -> XRSession {
        let _promise: JSPromise = jsObject[Strings.requestSession]!(mode.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ClosureAttribute.Optional1
    public var ondevicechange: EventHandler
}
