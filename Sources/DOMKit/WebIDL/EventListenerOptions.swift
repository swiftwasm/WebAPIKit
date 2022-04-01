// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EventListenerOptions: BridgedDictionary {
    public convenience init(capture: Bool) {
        let object = JSObject.global.Object.function!.new()
        object["capture"] = capture.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _capture = ReadWriteAttribute(jsObject: object, name: "capture")
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var capture: Bool
}
