// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StructuredSerializeOptions: BridgedDictionary {
    public convenience init(transfer: [JSObject]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.transfer] = transfer.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _transfer = ReadWriteAttribute(jsObject: object, name: Strings.transfer)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var transfer: [JSObject]
}
