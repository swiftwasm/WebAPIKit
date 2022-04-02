// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Client: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Client].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _url = ReadonlyAttribute(jsObject: jsObject, name: Strings.url)
        _frameType = ReadonlyAttribute(jsObject: jsObject, name: Strings.frameType)
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _lifecycleState = ReadonlyAttribute(jsObject: jsObject, name: Strings.lifecycleState)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var url: String

    @ReadonlyAttribute
    public var frameType: FrameType

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var type: ClientType

    public func postMessage(message: JSValue, transfer: [JSObject]) {
        _ = jsObject[Strings.postMessage]!(message.jsValue(), transfer.jsValue())
    }

    public func postMessage(message: JSValue, options: StructuredSerializeOptions? = nil) {
        _ = jsObject[Strings.postMessage]!(message.jsValue(), options?.jsValue() ?? .undefined)
    }

    @ReadonlyAttribute
    public var lifecycleState: ClientLifecycleState
}
