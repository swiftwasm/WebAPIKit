// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PresentationRequest: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.PresentationRequest].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onconnectionavailable = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onconnectionavailable)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(url: String) {
        self.init(unsafelyWrapping: Self.constructor.new(url.jsValue()))
    }

    public convenience init(urls: [String]) {
        self.init(unsafelyWrapping: Self.constructor.new(urls.jsValue()))
    }

    public func start() -> JSPromise {
        let this = jsObject
        return this[Strings.start].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func start() async throws -> PresentationConnection {
        let this = jsObject
        let _promise: JSPromise = this[Strings.start].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func reconnect(presentationId: String) -> JSPromise {
        let this = jsObject
        return this[Strings.reconnect].function!(this: this, arguments: [presentationId.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func reconnect(presentationId: String) async throws -> PresentationConnection {
        let this = jsObject
        let _promise: JSPromise = this[Strings.reconnect].function!(this: this, arguments: [presentationId.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getAvailability() -> JSPromise {
        let this = jsObject
        return this[Strings.getAvailability].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getAvailability() async throws -> PresentationAvailability {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getAvailability].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ClosureAttribute1Optional
    public var onconnectionavailable: EventHandler
}
