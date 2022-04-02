// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CompositionEventInit: BridgedDictionary {
    public convenience init(data: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.data] = data.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _data = ReadWriteAttribute(jsObject: object, name: Strings.data)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var data: String
}
