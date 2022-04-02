// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WindowClient: Client {
    override public class var constructor: JSFunction { JSObject.global[Strings.WindowClient].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _visibilityState = ReadonlyAttribute(jsObject: jsObject, name: Strings.visibilityState)
        _focused = ReadonlyAttribute(jsObject: jsObject, name: Strings.focused)
        _ancestorOrigins = ReadonlyAttribute(jsObject: jsObject, name: Strings.ancestorOrigins)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var visibilityState: DocumentVisibilityState

    @ReadonlyAttribute
    public var focused: Bool

    @ReadonlyAttribute
    public var ancestorOrigins: [String]

    public func focus() -> JSPromise {
        let this = jsObject
        return this[Strings.focus].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func focus() async throws -> WindowClient {
        let this = jsObject
        let _promise: JSPromise = this[Strings.focus].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func navigate(url: String) -> JSPromise {
        let this = jsObject
        return this[Strings.navigate].function!(this: this, arguments: [url.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func navigate(url: String) async throws -> WindowClient? {
        let this = jsObject
        let _promise: JSPromise = this[Strings.navigate].function!(this: this, arguments: [url.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
