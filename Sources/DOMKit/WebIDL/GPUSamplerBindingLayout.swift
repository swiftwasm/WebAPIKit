// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUSamplerBindingLayout: BridgedDictionary {
    public convenience init(type: GPUSamplerBindingType) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.type] = type.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var type: GPUSamplerBindingType
}
