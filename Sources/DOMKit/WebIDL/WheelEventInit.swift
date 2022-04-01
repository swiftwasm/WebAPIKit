// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WheelEventInit: BridgedDictionary {
    private enum Keys {
        static let deltaMode: JSString = "deltaMode"
        static let deltaY: JSString = "deltaY"
        static let deltaZ: JSString = "deltaZ"
        static let deltaX: JSString = "deltaX"
    }

    public convenience init(deltaX: Double, deltaY: Double, deltaZ: Double, deltaMode: UInt32) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.deltaX] = deltaX.jsValue()
        object[Keys.deltaY] = deltaY.jsValue()
        object[Keys.deltaZ] = deltaZ.jsValue()
        object[Keys.deltaMode] = deltaMode.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _deltaX = ReadWriteAttribute(jsObject: object, name: Keys.deltaX)
        _deltaY = ReadWriteAttribute(jsObject: object, name: Keys.deltaY)
        _deltaZ = ReadWriteAttribute(jsObject: object, name: Keys.deltaZ)
        _deltaMode = ReadWriteAttribute(jsObject: object, name: Keys.deltaMode)
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
