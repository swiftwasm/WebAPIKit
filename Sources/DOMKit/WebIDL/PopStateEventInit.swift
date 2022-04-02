// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PopStateEventInit: BridgedDictionary {
    private enum Keys {
        static let state: JSString = "state"
    }

    public convenience init(state: JSValue) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.state] = state.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _state = ReadWriteAttribute(jsObject: object, name: Keys.state)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var state: JSValue
}