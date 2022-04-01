// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WheelEventInit: BridgedDictionary {
    public convenience init(deltaX: Double, deltaY: Double, deltaZ: Double, deltaMode: UInt32) {
        let object = JSObject.global.Object.function!.new()
        object["deltaX"] = deltaX.jsValue()
        object["deltaY"] = deltaY.jsValue()
        object["deltaZ"] = deltaZ.jsValue()
        object["deltaMode"] = deltaMode.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _deltaX = ReadWriteAttribute(jsObject: object, name: "deltaX")
        _deltaY = ReadWriteAttribute(jsObject: object, name: "deltaY")
        _deltaZ = ReadWriteAttribute(jsObject: object, name: "deltaZ")
        _deltaMode = ReadWriteAttribute(jsObject: object, name: "deltaMode")
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var deltaX: Double

    @ReadWriteAttribute
    public var deltaY: Double

    @ReadWriteAttribute
    public var deltaZ: Double

    @ReadWriteAttribute
    public var deltaMode: UInt32
}
