// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PortalHost: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.PortalHost].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _onmessage = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onmessage)
        _onmessageerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onmessageerror)
        super.init(unsafelyWrapping: jsObject)
    }

    public func postMessage(message: JSValue, options: StructuredSerializeOptions? = nil) {
        _ = jsObject[Strings.postMessage]!(message.jsValue(), options?.jsValue() ?? .undefined)
    }

    @ClosureAttribute1Optional
    public var onmessage: EventHandler

    @ClosureAttribute1Optional
    public var onmessageerror: EventHandler
}
