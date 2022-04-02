// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HmacKeyAlgorithm: BridgedDictionary {
    public convenience init(hash: KeyAlgorithm, length: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.hash] = hash.jsValue()
        object[Strings.length] = length.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _hash = ReadWriteAttribute(jsObject: object, name: Strings.hash)
        _length = ReadWriteAttribute(jsObject: object, name: Strings.length)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var hash: KeyAlgorithm

    @ReadWriteAttribute
    public var length: UInt32
}
