// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMMatrixInit: BridgedDictionary {
    private enum Keys {
        static let m14: JSString = "m14"
        static let m24: JSString = "m24"
        static let m23: JSString = "m23"
        static let m32: JSString = "m32"
        static let m34: JSString = "m34"
        static let m44: JSString = "m44"
        static let m33: JSString = "m33"
        static let is2D: JSString = "is2D"
        static let m31: JSString = "m31"
        static let m43: JSString = "m43"
        static let m13: JSString = "m13"
    }

    public convenience init(m13: Double, m14: Double, m23: Double, m24: Double, m31: Double, m32: Double, m33: Double, m34: Double, m43: Double, m44: Double, is2D: Bool) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.m13] = m13.jsValue()
        object[Keys.m14] = m14.jsValue()
        object[Keys.m23] = m23.jsValue()
        object[Keys.m24] = m24.jsValue()
        object[Keys.m31] = m31.jsValue()
        object[Keys.m32] = m32.jsValue()
        object[Keys.m33] = m33.jsValue()
        object[Keys.m34] = m34.jsValue()
        object[Keys.m43] = m43.jsValue()
        object[Keys.m44] = m44.jsValue()
        object[Keys.is2D] = is2D.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _m13 = ReadWriteAttribute(jsObject: object, name: Keys.m13)
        _m14 = ReadWriteAttribute(jsObject: object, name: Keys.m14)
        _m23 = ReadWriteAttribute(jsObject: object, name: Keys.m23)
        _m24 = ReadWriteAttribute(jsObject: object, name: Keys.m24)
        _m31 = ReadWriteAttribute(jsObject: object, name: Keys.m31)
        _m32 = ReadWriteAttribute(jsObject: object, name: Keys.m32)
        _m33 = ReadWriteAttribute(jsObject: object, name: Keys.m33)
        _m34 = ReadWriteAttribute(jsObject: object, name: Keys.m34)
        _m43 = ReadWriteAttribute(jsObject: object, name: Keys.m43)
        _m44 = ReadWriteAttribute(jsObject: object, name: Keys.m44)
        _is2D = ReadWriteAttribute(jsObject: object, name: Keys.is2D)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var m13: Double

    @ReadWriteAttribute
    public var m14: Double

    @ReadWriteAttribute
    public var m23: Double

    @ReadWriteAttribute
    public var m24: Double

    @ReadWriteAttribute
    public var m31: Double

    @ReadWriteAttribute
    public var m32: Double

    @ReadWriteAttribute
    public var m33: Double

    @ReadWriteAttribute
    public var m34: Double

    @ReadWriteAttribute
    public var m43: Double

    @ReadWriteAttribute
    public var m44: Double

    @ReadWriteAttribute
    public var is2D: Bool
}
