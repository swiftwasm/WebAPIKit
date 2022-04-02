// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextDecodeOptions: BridgedDictionary {
    public convenience init(stream: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.stream] = stream.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _stream = ReadWriteAttribute(jsObject: object, name: Strings.stream)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var stream: Bool
}
