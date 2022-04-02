// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NavigationReloadOptions: BridgedDictionary {
    public convenience init(state: JSValue) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.state] = state.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _state = ReadWriteAttribute(jsObject: object, name: Strings.state)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var state: JSValue
}
