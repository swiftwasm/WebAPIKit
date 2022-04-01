// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ReadableStreamGetReaderOptions: BridgedDictionary {
    public convenience init(mode: ReadableStreamReaderMode) {
        let object = JSObject.global.Object.function!.new()
        object["mode"] = mode.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _mode = ReadWriteAttribute(jsObject: object, name: "mode")
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var mode: ReadableStreamReaderMode
}
