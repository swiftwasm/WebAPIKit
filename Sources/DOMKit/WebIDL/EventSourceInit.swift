// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EventSourceInit: JSObject {
    public init(withCredentials: Bool) {
        let object = JSObject.global.Object.function!.new()
        object["withCredentials"] = withCredentials.jsValue()
        _withCredentials = ReadWriteAttribute(jsObject: object, name: "withCredentials")
        super.init(cloning: object)
    }

    @ReadWriteAttribute
    public var withCredentials: Bool
}
