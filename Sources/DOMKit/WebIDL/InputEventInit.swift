// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class InputEventInit: BridgedDictionary {
    public convenience init(dataTransfer: DataTransfer?, targetRanges: [StaticRange], data: String?, isComposing: Bool, inputType: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.dataTransfer] = dataTransfer.jsValue
        object[Strings.targetRanges] = targetRanges.jsValue
        object[Strings.data] = data.jsValue
        object[Strings.isComposing] = isComposing.jsValue
        object[Strings.inputType] = inputType.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _dataTransfer = ReadWriteAttribute(jsObject: object, name: Strings.dataTransfer)
        _targetRanges = ReadWriteAttribute(jsObject: object, name: Strings.targetRanges)
        _data = ReadWriteAttribute(jsObject: object, name: Strings.data)
        _isComposing = ReadWriteAttribute(jsObject: object, name: Strings.isComposing)
        _inputType = ReadWriteAttribute(jsObject: object, name: Strings.inputType)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var dataTransfer: DataTransfer?

    @ReadWriteAttribute
    public var targetRanges: [StaticRange]

    @ReadWriteAttribute
    public var data: String?

    @ReadWriteAttribute
    public var isComposing: Bool

    @ReadWriteAttribute
    public var inputType: String
}
