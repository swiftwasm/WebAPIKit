// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class UncalibratedMagnetometerReadingValues: BridgedDictionary {
    public convenience init(x: Double?, y: Double?, z: Double?, xBias: Double?, yBias: Double?, zBias: Double?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.x] = x.jsValue()
        object[Strings.y] = y.jsValue()
        object[Strings.z] = z.jsValue()
        object[Strings.xBias] = xBias.jsValue()
        object[Strings.yBias] = yBias.jsValue()
        object[Strings.zBias] = zBias.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _x = ReadWriteAttribute(jsObject: object, name: Strings.x)
        _y = ReadWriteAttribute(jsObject: object, name: Strings.y)
        _z = ReadWriteAttribute(jsObject: object, name: Strings.z)
        _xBias = ReadWriteAttribute(jsObject: object, name: Strings.xBias)
        _yBias = ReadWriteAttribute(jsObject: object, name: Strings.yBias)
        _zBias = ReadWriteAttribute(jsObject: object, name: Strings.zBias)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var x: Double?

    @ReadWriteAttribute
    public var y: Double?

    @ReadWriteAttribute
    public var z: Double?

    @ReadWriteAttribute
    public var xBias: Double?

    @ReadWriteAttribute
    public var yBias: Double?

    @ReadWriteAttribute
    public var zBias: Double?
}