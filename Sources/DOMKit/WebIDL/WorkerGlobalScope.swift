// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WorkerGlobalScope: EventTarget, WindowOrWorkerGlobalScope {
    override public class var constructor: JSFunction { JSObject.global.WorkerGlobalScope.function! }

    private enum Keys {
        static let location: JSString = "location"
        static let `self`: JSString = "self"
        static let onunhandledrejection: JSString = "onunhandledrejection"
        static let onerror: JSString = "onerror"
        static let ononline: JSString = "ononline"
        static let navigator: JSString = "navigator"
        static let importScripts: JSString = "importScripts"
        static let onlanguagechange: JSString = "onlanguagechange"
        static let onoffline: JSString = "onoffline"
        static let onrejectionhandled: JSString = "onrejectionhandled"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _self = ReadonlyAttribute(jsObject: jsObject, name: Keys.self)
        _location = ReadonlyAttribute(jsObject: jsObject, name: Keys.location)
        _navigator = ReadonlyAttribute(jsObject: jsObject, name: Keys.navigator)
        _onerror = ClosureAttribute.Optional5(jsObject: jsObject, name: Keys.onerror)
        _onlanguagechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onlanguagechange)
        _onoffline = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onoffline)
        _ononline = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.ononline)
        _onrejectionhandled = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onrejectionhandled)
        _onunhandledrejection = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onunhandledrejection)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var `self`: WorkerGlobalScope

    @ReadonlyAttribute
    public var location: WorkerLocation

    @ReadonlyAttribute
    public var navigator: WorkerNavigator

    public func importScripts(urls: String...) {
        _ = jsObject[Keys.importScripts]!(urls.jsValue())
    }

    @ClosureAttribute.Optional5
    public var onerror: OnErrorEventHandler

    @ClosureAttribute.Optional1
    public var onlanguagechange: EventHandler

    @ClosureAttribute.Optional1
    public var onoffline: EventHandler

    @ClosureAttribute.Optional1
    public var ononline: EventHandler

    @ClosureAttribute.Optional1
    public var onrejectionhandled: EventHandler

    @ClosureAttribute.Optional1
    public var onunhandledrejection: EventHandler
}
