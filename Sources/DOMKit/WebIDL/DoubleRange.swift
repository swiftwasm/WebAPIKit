// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DoubleRange: BridgedDictionary {
    public convenience init(max: Double, min: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.max] = max.jsValue()
        object[Strings.min] = min.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _max = ReadWriteAttribute(jsObject: object, name: Strings.max)
        _min = ReadWriteAttribute(jsObject: object, name: Strings.min)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var max: Double

    @ReadWriteAttribute
    public var min: Double
}
