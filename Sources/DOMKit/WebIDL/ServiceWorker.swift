// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ServiceWorker: EventTarget, AbstractWorker {
    override public class var constructor: JSFunction { JSObject.global[Strings.ServiceWorker].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _scriptURL = ReadonlyAttribute(jsObject: jsObject, name: Strings.scriptURL)
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _onstatechange = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onstatechange)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var scriptURL: String

    @ReadonlyAttribute
    public var state: ServiceWorkerState

    public func postMessage(message: JSValue, transfer: [JSObject]) {
        _ = jsObject[Strings.postMessage]!(message.jsValue(), transfer.jsValue())
    }

    public func postMessage(message: JSValue, options: StructuredSerializeOptions? = nil) {
        _ = jsObject[Strings.postMessage]!(message.jsValue(), options?.jsValue() ?? .undefined)
    }

    @ClosureAttribute.Optional1
    public var onstatechange: EventHandler
}