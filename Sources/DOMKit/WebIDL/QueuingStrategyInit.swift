// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class QueuingStrategyInit: BridgedDictionary {
    public convenience init(highWaterMark: Double) {
        let object = JSObject.global.Object.function!.new()
        object["highWaterMark"] = highWaterMark.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _highWaterMark = ReadWriteAttribute(jsObject: object, name: "highWaterMark")
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var highWaterMark: Double
}
