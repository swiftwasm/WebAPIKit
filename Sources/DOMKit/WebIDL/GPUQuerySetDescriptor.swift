// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUQuerySetDescriptor: BridgedDictionary {
    public convenience init(type: GPUQueryType, count: GPUSize32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue()
        object[Strings.count] = count.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _count = ReadWriteAttribute(jsObject: object, name: Strings.count)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: GPUQueryType

    @ReadWriteAttribute
    public var count: GPUSize32
}
