// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ServiceWorkerGlobalScope: WorkerGlobalScope {
    override public class var constructor: JSFunction { JSObject.global[Strings.ServiceWorkerGlobalScope].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _cookieStore = ReadonlyAttribute(jsObject: jsObject, name: Strings.cookieStore)
        _oncookiechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.oncookiechange)
        _onperiodicsync = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onperiodicsync)
        _onnotificationclick = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onnotificationclick)
        _onnotificationclose = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onnotificationclose)
        _onsync = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onsync)
        _onbackgroundfetchsuccess = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onbackgroundfetchsuccess)
        _onbackgroundfetchfail = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onbackgroundfetchfail)
        _onbackgroundfetchabort = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onbackgroundfetchabort)
        _onbackgroundfetchclick = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onbackgroundfetchclick)
        _oncanmakepayment = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.oncanmakepayment)
        _onpaymentrequest = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onpaymentrequest)
        _clients = ReadonlyAttribute(jsObject: jsObject, name: Strings.clients)
        _registration = ReadonlyAttribute(jsObject: jsObject, name: Strings.registration)
        _serviceWorker = ReadonlyAttribute(jsObject: jsObject, name: Strings.serviceWorker)
        _oninstall = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.oninstall)
        _onactivate = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onactivate)
        _onfetch = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onfetch)
        _onmessage = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onmessage)
        _onmessageerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onmessageerror)
        _onpush = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onpush)
        _onpushsubscriptionchange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onpushsubscriptionchange)
        _oncontentdelete = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.oncontentdelete)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var cookieStore: CookieStore

    @ClosureAttribute.Optional1
    public var oncookiechange: EventHandler

    @ClosureAttribute.Optional1
    public var onperiodicsync: EventHandler

    @ClosureAttribute.Optional1
    public var onnotificationclick: EventHandler

    @ClosureAttribute.Optional1
    public var onnotificationclose: EventHandler

    @ClosureAttribute.Optional1
    public var onsync: EventHandler

    @ClosureAttribute.Optional1
    public var onbackgroundfetchsuccess: EventHandler

    @ClosureAttribute.Optional1
    public var onbackgroundfetchfail: EventHandler

    @ClosureAttribute.Optional1
    public var onbackgroundfetchabort: EventHandler

    @ClosureAttribute.Optional1
    public var onbackgroundfetchclick: EventHandler

    @ClosureAttribute.Optional1
    public var oncanmakepayment: EventHandler

    @ClosureAttribute.Optional1
    public var onpaymentrequest: EventHandler

    @ReadonlyAttribute
    public var clients: Clients

    @ReadonlyAttribute
    public var registration: ServiceWorkerRegistration

    @ReadonlyAttribute
    public var serviceWorker: ServiceWorker

    public func skipWaiting() -> JSPromise {
        jsObject[Strings.skipWaiting]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func skipWaiting() async throws {
        let _promise: JSPromise = jsObject[Strings.skipWaiting]!().fromJSValue()!
        _ = try await _promise.get()
    }

    @ClosureAttribute.Optional1
    public var oninstall: EventHandler

    @ClosureAttribute.Optional1
    public var onactivate: EventHandler

    @ClosureAttribute.Optional1
    public var onfetch: EventHandler

    @ClosureAttribute.Optional1
    public var onmessage: EventHandler

    @ClosureAttribute.Optional1
    public var onmessageerror: EventHandler

    @ClosureAttribute.Optional1
    public var onpush: EventHandler

    @ClosureAttribute.Optional1
    public var onpushsubscriptionchange: EventHandler

    @ClosureAttribute.Optional1
    public var oncontentdelete: EventHandler
}