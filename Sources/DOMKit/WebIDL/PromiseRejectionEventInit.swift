// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PromiseRejectionEventInit: BridgedDictionary {
    private enum Keys {
        static let promise: JSString = "promise"
        static let reason: JSString = "reason"
    }

    public convenience init(promise: JSPromise, reason: JSValue) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.promise] = promise.jsValue()
        object[Keys.reason] = reason.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _promise = ReadWriteAttribute(jsObject: object, name: Keys.promise)
        _reason = ReadWriteAttribute(jsObject: object, name: Keys.reason)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var promise: JSPromise

    @ReadWriteAttribute
    public var reason: JSValue
}