// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AesKeyGenParams: BridgedDictionary {
    public convenience init(length: UInt16) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.length] = length.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _length = ReadWriteAttribute(jsObject: object, name: Strings.length)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var length: UInt16
}
