// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUBlendComponent: BridgedDictionary {
    public convenience init(operation: GPUBlendOperation, srcFactor: GPUBlendFactor, dstFactor: GPUBlendFactor) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.operation] = operation.jsValue()
        object[Strings.srcFactor] = srcFactor.jsValue()
        object[Strings.dstFactor] = dstFactor.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _operation = ReadWriteAttribute(jsObject: object, name: Strings.operation)
        _srcFactor = ReadWriteAttribute(jsObject: object, name: Strings.srcFactor)
        _dstFactor = ReadWriteAttribute(jsObject: object, name: Strings.dstFactor)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var operation: GPUBlendOperation

    @ReadWriteAttribute
    public var srcFactor: GPUBlendFactor

    @ReadWriteAttribute
    public var dstFactor: GPUBlendFactor
}
