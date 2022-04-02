// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMMatrix2DInit: BridgedDictionary {
    public convenience init(a: Double, b: Double, c: Double, d: Double, e: Double, f: Double, m11: Double, m12: Double, m21: Double, m22: Double, m41: Double, m42: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.a] = a.jsValue()
        object[Strings.b] = b.jsValue()
        object[Strings.c] = c.jsValue()
        object[Strings.d] = d.jsValue()
        object[Strings.e] = e.jsValue()
        object[Strings.f] = f.jsValue()
        object[Strings.m11] = m11.jsValue()
        object[Strings.m12] = m12.jsValue()
        object[Strings.m21] = m21.jsValue()
        object[Strings.m22] = m22.jsValue()
        object[Strings.m41] = m41.jsValue()
        object[Strings.m42] = m42.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _a = ReadWriteAttribute(jsObject: object, name: Strings.a)
        _b = ReadWriteAttribute(jsObject: object, name: Strings.b)
        _c = ReadWriteAttribute(jsObject: object, name: Strings.c)
        _d = ReadWriteAttribute(jsObject: object, name: Strings.d)
        _e = ReadWriteAttribute(jsObject: object, name: Strings.e)
        _f = ReadWriteAttribute(jsObject: object, name: Strings.f)
        _m11 = ReadWriteAttribute(jsObject: object, name: Strings.m11)
        _m12 = ReadWriteAttribute(jsObject: object, name: Strings.m12)
        _m21 = ReadWriteAttribute(jsObject: object, name: Strings.m21)
        _m22 = ReadWriteAttribute(jsObject: object, name: Strings.m22)
        _m41 = ReadWriteAttribute(jsObject: object, name: Strings.m41)
        _m42 = ReadWriteAttribute(jsObject: object, name: Strings.m42)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var a: Double

    @ReadWriteAttribute
    public var b: Double

    @ReadWriteAttribute
    public var c: Double

    @ReadWriteAttribute
    public var d: Double

    @ReadWriteAttribute
    public var e: Double

    @ReadWriteAttribute
    public var f: Double

    @ReadWriteAttribute
    public var m11: Double

    @ReadWriteAttribute
    public var m12: Double

    @ReadWriteAttribute
    public var m21: Double

    @ReadWriteAttribute
    public var m22: Double

    @ReadWriteAttribute
    public var m41: Double

    @ReadWriteAttribute
    public var m42: Double
}
