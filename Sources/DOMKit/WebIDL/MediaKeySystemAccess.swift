// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaKeySystemAccess: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.MediaKeySystemAccess].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _keySystem = ReadonlyAttribute(jsObject: jsObject, name: Strings.keySystem)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var keySystem: String

    public func getConfiguration() -> MediaKeySystemConfiguration {
        let this = jsObject
        return this[Strings.getConfiguration].function!(this: this, arguments: []).fromJSValue()!
    }

    public func createMediaKeys() -> JSPromise {
        let this = jsObject
        return this[Strings.createMediaKeys].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func createMediaKeys() async throws -> MediaKeys {
        let this = jsObject
        let _promise: JSPromise = this[Strings.createMediaKeys].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
