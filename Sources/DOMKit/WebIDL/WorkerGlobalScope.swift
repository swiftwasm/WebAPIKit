// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WorkerGlobalScope: EventTarget, FontFaceSource, WindowOrWorkerGlobalScope {
    override public class var constructor: JSFunction { JSObject.global[Strings.WorkerGlobalScope].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _self = ReadonlyAttribute(jsObject: jsObject, name: Strings._self)
        _location = ReadonlyAttribute(jsObject: jsObject, name: Strings.location)
        _navigator = ReadonlyAttribute(jsObject: jsObject, name: Strings.navigator)
        _onerror = ClosureAttribute5Optional(jsObject: jsObject, name: Strings.onerror)
        _onlanguagechange = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onlanguagechange)
        _onoffline = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onoffline)
        _ononline = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.ononline)
        _onrejectionhandled = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onrejectionhandled)
        _onunhandledrejection = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onunhandledrejection)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var `self`: WorkerGlobalScope

    @ReadonlyAttribute
    public var location: WorkerLocation

    @ReadonlyAttribute
    public var navigator: WorkerNavigator

    public func importScripts(urls: String...) {
        _ = jsObject[Strings.importScripts]!(urls.jsValue())
    }

    @ClosureAttribute5Optional
    public var onerror: OnErrorEventHandler

    @ClosureAttribute1Optional
    public var onlanguagechange: EventHandler

    @ClosureAttribute1Optional
    public var onoffline: EventHandler

    @ClosureAttribute1Optional
    public var ononline: EventHandler

    @ClosureAttribute1Optional
    public var onrejectionhandled: EventHandler

    @ClosureAttribute1Optional
    public var onunhandledrejection: EventHandler
}
