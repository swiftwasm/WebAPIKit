// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUPipelineDescriptorBase: BridgedDictionary {
    public convenience init(layout: GPUPipelineLayout) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.layout] = layout.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _layout = ReadWriteAttribute(jsObject: object, name: Strings.layout)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var layout: GPUPipelineLayout
}
