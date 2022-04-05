// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WaveShaperOptions: BridgedDictionary {
    public convenience init(curve: [Float], oversample: OverSampleType) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.curve] = curve.jsValue
        object[Strings.oversample] = oversample.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _curve = ReadWriteAttribute(jsObject: object, name: Strings.curve)
        _oversample = ReadWriteAttribute(jsObject: object, name: Strings.oversample)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var curve: [Float]

    @ReadWriteAttribute
    public var oversample: OverSampleType
}
