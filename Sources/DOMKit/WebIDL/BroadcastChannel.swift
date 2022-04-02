// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class BroadcastChannel: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.BroadcastChannel].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _onmessage = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onmessage)
        _onmessageerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onmessageerror)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(name: String) {
        self.init(unsafelyWrapping: Self.constructor.new(name.jsValue()))
    }

    @ReadonlyAttribute
    public var name: String

    public func postMessage(message: JSValue) {
        let this = jsObject
        _ = this[Strings.postMessage].function!(this: this, arguments: [message.jsValue()])
    }

    public func close() {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [])
    }

    @ClosureAttribute1Optional
    public var onmessage: EventHandler

    @ClosureAttribute1Optional
    public var onmessageerror: EventHandler
}
