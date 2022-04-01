// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMMatrix2DInit: BridgedDictionary {
    private enum Keys {
        static let a: JSString = "a"
        static let b: JSString = "b"
        static let c: JSString = "c"
        static let d: JSString = "d"
        static let e: JSString = "e"
        static let f: JSString = "f"
        static let m11: JSString = "m11"
        static let m12: JSString = "m12"
        static let m21: JSString = "m21"
        static let m22: JSString = "m22"
        static let m41: JSString = "m41"
        static let m42: JSString = "m42"
    }

    public convenience init(a: Double, b: Double, c: Double, d: Double, e: Double, f: Double, m11: Double, m12: Double, m21: Double, m22: Double, m41: Double, m42: Double) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.a] = a.jsValue()
        object[Keys.b] = b.jsValue()
        object[Keys.c] = c.jsValue()
        object[Keys.d] = d.jsValue()
        object[Keys.e] = e.jsValue()
        object[Keys.f] = f.jsValue()
        object[Keys.m11] = m11.jsValue()
        object[Keys.m12] = m12.jsValue()
        object[Keys.m21] = m21.jsValue()
        object[Keys.m22] = m22.jsValue()
        object[Keys.m41] = m41.jsValue()
        object[Keys.m42] = m42.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _a = ReadWriteAttribute(jsObject: object, name: Keys.a)
        _b = ReadWriteAttribute(jsObject: object, name: Keys.b)
        _c = ReadWriteAttribute(jsObject: object, name: Keys.c)
        _d = ReadWriteAttribute(jsObject: object, name: Keys.d)
        _e = ReadWriteAttribute(jsObject: object, name: Keys.e)
        _f = ReadWriteAttribute(jsObject: object, name: Keys.f)
        _m11 = ReadWriteAttribute(jsObject: object, name: Keys.m11)
        _m12 = ReadWriteAttribute(jsObject: object, name: Keys.m12)
        _m21 = ReadWriteAttribute(jsObject: object, name: Keys.m21)
        _m22 = ReadWriteAttribute(jsObject: object, name: Keys.m22)
        _m41 = ReadWriteAttribute(jsObject: object, name: Keys.m41)
        _m42 = ReadWriteAttribute(jsObject: object, name: Keys.m42)
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
