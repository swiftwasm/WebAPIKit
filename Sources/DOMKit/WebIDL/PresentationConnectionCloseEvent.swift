// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PresentationConnectionCloseEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.PresentationConnectionCloseEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _reason = ReadonlyAttribute(jsObject: jsObject, name: Strings.reason)
        _message = ReadonlyAttribute(jsObject: jsObject, name: Strings.message)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: PresentationConnectionCloseEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var reason: PresentationConnectionCloseReason

    @ReadonlyAttribute
    public var message: String
}
