// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WriteParams: BridgedDictionary {
    public convenience init(type: WriteCommandType, size: UInt64?, position: UInt64?, data: __UNSUPPORTED_UNION__?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue()
        object[Strings.size] = size.jsValue()
        object[Strings.position] = position.jsValue()
        object[Strings.data] = data.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _size = ReadWriteAttribute(jsObject: object, name: Strings.size)
        _position = ReadWriteAttribute(jsObject: object, name: Strings.position)
        _data = ReadWriteAttribute(jsObject: object, name: Strings.data)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: WriteCommandType

    @ReadWriteAttribute
    public var size: UInt64?

    @ReadWriteAttribute
    public var position: UInt64?

    @ReadWriteAttribute
    public var data: __UNSUPPORTED_UNION__?
}