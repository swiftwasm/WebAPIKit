// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DedicatedWorkerGlobalScope: WorkerGlobalScope, AnimationFrameProvider {
    override public class var constructor: JSFunction { JSObject.global.DedicatedWorkerGlobalScope.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: "name")
        _onmessage = ClosureAttribute.Optional1(jsObject: jsObject, name: "onmessage")
        _onmessageerror = ClosureAttribute.Optional1(jsObject: jsObject, name: "onmessageerror")
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var name: String

    public func postMessage(message: JSValue, transfer: [JSObject]) {
        _ = jsObject["postMessage"]!(message.jsValue(), transfer.jsValue())
    }

    public func postMessage(message: JSValue, options: StructuredSerializeOptions? = nil) {
        _ = jsObject["postMessage"]!(message.jsValue(), options?.jsValue() ?? .undefined)
    }

    public func close() {
        _ = jsObject["close"]!()
    }

    @ClosureAttribute.Optional1
    public var onmessage: EventHandler

    @ClosureAttribute.Optional1
    public var onmessageerror: EventHandler
}
