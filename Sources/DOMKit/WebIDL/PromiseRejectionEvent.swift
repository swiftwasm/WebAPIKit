// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PromiseRejectionEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.PromiseRejectionEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _promise = ReadonlyAttribute(jsObject: jsObject, name: Strings.promise)
        _reason = ReadonlyAttribute(jsObject: jsObject, name: Strings.reason)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: PromiseRejectionEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue, eventInitDict.jsValue]))
    }

    @ReadonlyAttribute
    public var promise: JSPromise

    @ReadonlyAttribute
    public var reason: JSValue
}
