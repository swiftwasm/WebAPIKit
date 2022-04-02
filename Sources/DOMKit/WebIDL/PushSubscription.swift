// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PushSubscription: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.PushSubscription].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _endpoint = ReadonlyAttribute(jsObject: jsObject, name: Strings.endpoint)
        _expirationTime = ReadonlyAttribute(jsObject: jsObject, name: Strings.expirationTime)
        _options = ReadonlyAttribute(jsObject: jsObject, name: Strings.options)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var endpoint: String

    @ReadonlyAttribute
    public var expirationTime: EpochTimeStamp?

    @ReadonlyAttribute
    public var options: PushSubscriptionOptions

    public func getKey(name: PushEncryptionKeyName) -> ArrayBuffer? {
        let this = jsObject
        return this[Strings.getKey].function!(this: this, arguments: [name.jsValue()]).fromJSValue()!
    }

    public func unsubscribe() -> JSPromise {
        let this = jsObject
        return this[Strings.unsubscribe].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func unsubscribe() async throws -> Bool {
        let this = jsObject
        let _promise: JSPromise = this[Strings.unsubscribe].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func toJSON() -> PushSubscriptionJSON {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
