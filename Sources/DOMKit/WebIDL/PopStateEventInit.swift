// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PopStateEventInit: BridgedDictionary {
    public convenience init(state: JSValue) {
        let object = JSObject.global.Object.function!.new()
        object["state"] = state.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _state = ReadWriteAttribute(jsObject: object, name: "state")
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var state: JSValue
}
