// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUColorDict: BridgedDictionary {
    public convenience init(r: Double, g: Double, b: Double, a: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.r] = r.jsValue()
        object[Strings.g] = g.jsValue()
        object[Strings.b] = b.jsValue()
        object[Strings.a] = a.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _r = ReadWriteAttribute(jsObject: object, name: Strings.r)
        _g = ReadWriteAttribute(jsObject: object, name: Strings.g)
        _b = ReadWriteAttribute(jsObject: object, name: Strings.b)
        _a = ReadWriteAttribute(jsObject: object, name: Strings.a)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var r: Double

    @ReadWriteAttribute
    public var g: Double

    @ReadWriteAttribute
    public var b: Double

    @ReadWriteAttribute
    public var a: Double
}