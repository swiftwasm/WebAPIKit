// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class IntrinsicSizesResultOptions: BridgedDictionary {
    public convenience init(maxContentSize: Double, minContentSize: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.maxContentSize] = maxContentSize.jsValue()
        object[Strings.minContentSize] = minContentSize.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _maxContentSize = ReadWriteAttribute(jsObject: object, name: Strings.maxContentSize)
        _minContentSize = ReadWriteAttribute(jsObject: object, name: Strings.minContentSize)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var maxContentSize: Double

    @ReadWriteAttribute
    public var minContentSize: Double
}
