// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ChannelMergerOptions: BridgedDictionary {
    public convenience init(numberOfInputs: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.numberOfInputs] = numberOfInputs.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _numberOfInputs = ReadWriteAttribute(jsObject: object, name: Strings.numberOfInputs)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var numberOfInputs: UInt32
}
