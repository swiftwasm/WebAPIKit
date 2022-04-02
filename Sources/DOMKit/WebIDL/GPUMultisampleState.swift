// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUMultisampleState: BridgedDictionary {
    public convenience init(count: GPUSize32, mask: GPUSampleMask, alphaToCoverageEnabled: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.count] = count.jsValue()
        object[Strings.mask] = mask.jsValue()
        object[Strings.alphaToCoverageEnabled] = alphaToCoverageEnabled.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _count = ReadWriteAttribute(jsObject: object, name: Strings.count)
        _mask = ReadWriteAttribute(jsObject: object, name: Strings.mask)
        _alphaToCoverageEnabled = ReadWriteAttribute(jsObject: object, name: Strings.alphaToCoverageEnabled)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var count: GPUSize32

    @ReadWriteAttribute
    public var mask: GPUSampleMask

    @ReadWriteAttribute
    public var alphaToCoverageEnabled: Bool
}