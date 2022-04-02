// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ServiceWorkerContainer: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.ServiceWorkerContainer].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _controller = ReadonlyAttribute(jsObject: jsObject, name: Strings.controller)
        _ready = ReadonlyAttribute(jsObject: jsObject, name: Strings.ready)
        _oncontrollerchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.oncontrollerchange)
        _onmessage = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onmessage)
        _onmessageerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onmessageerror)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var controller: ServiceWorker?

    @ReadonlyAttribute
    public var ready: JSPromise

    public func register(scriptURL: String, options: RegistrationOptions? = nil) -> JSPromise {
        jsObject[Strings.register]!(scriptURL.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func register(scriptURL: String, options: RegistrationOptions? = nil) async throws -> ServiceWorkerRegistration {
        let _promise: JSPromise = jsObject[Strings.register]!(scriptURL.jsValue(), options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getRegistration(clientURL: String? = nil) -> JSPromise {
        jsObject[Strings.getRegistration]!(clientURL?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getRegistration(clientURL: String? = nil) async throws -> __UNSUPPORTED_UNION__ {
        let _promise: JSPromise = jsObject[Strings.getRegistration]!(clientURL?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getRegistrations() -> JSPromise {
        jsObject[Strings.getRegistrations]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getRegistrations() async throws -> [ServiceWorkerRegistration] {
        let _promise: JSPromise = jsObject[Strings.getRegistrations]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func startMessages() {
        _ = jsObject[Strings.startMessages]!()
    }

    @ClosureAttribute.Optional1
    public var oncontrollerchange: EventHandler

    @ClosureAttribute.Optional1
    public var onmessage: EventHandler

    @ClosureAttribute.Optional1
    public var onmessageerror: EventHandler
}
