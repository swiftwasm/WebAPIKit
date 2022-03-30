// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMPointInit: JSObject {
    public init(x: Double, y: Double, z: Double, w: Double) {
        let object = JSObject.global.Object.function!.new()
        object["x"] = x.jsValue()
        object["y"] = y.jsValue()
        object["z"] = z.jsValue()
        object["w"] = w.jsValue()
        _x = ReadWriteAttribute(jsObject: object, name: "x")
        _y = ReadWriteAttribute(jsObject: object, name: "y")
        _z = ReadWriteAttribute(jsObject: object, name: "z")
        _w = ReadWriteAttribute(jsObject: object, name: "w")
        super.init(cloning: object)
    }

    @ReadWriteAttribute
    public var x: Double

    @ReadWriteAttribute
    public var y: Double

    @ReadWriteAttribute
    public var z: Double

    @ReadWriteAttribute
    public var w: Double
}
