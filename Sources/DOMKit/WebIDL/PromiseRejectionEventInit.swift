// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PromiseRejectionEventInit: BridgedDictionary {
    public convenience init(promise: JSPromise, reason: JSValue) {
        let object = JSObject.global.Object.function!.new()
        object["promise"] = promise.jsValue()
        object["reason"] = reason.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _promise = ReadWriteAttribute(jsObject: object, name: "promise")
        _reason = ReadWriteAttribute(jsObject: object, name: "reason")
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var promise: JSPromise

    @ReadWriteAttribute
    public var reason: JSValue
}
