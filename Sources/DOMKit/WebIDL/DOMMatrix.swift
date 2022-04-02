// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMMatrix: DOMMatrixReadOnly {
    override public class var constructor: JSFunction { JSObject.global[Strings.DOMMatrix].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _a = ReadWriteAttribute(jsObject: jsObject, name: Strings.a)
        _b = ReadWriteAttribute(jsObject: jsObject, name: Strings.b)
        _c = ReadWriteAttribute(jsObject: jsObject, name: Strings.c)
        _d = ReadWriteAttribute(jsObject: jsObject, name: Strings.d)
        _e = ReadWriteAttribute(jsObject: jsObject, name: Strings.e)
        _f = ReadWriteAttribute(jsObject: jsObject, name: Strings.f)
        _m11 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m11)
        _m12 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m12)
        _m13 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m13)
        _m14 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m14)
        _m21 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m21)
        _m22 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m22)
        _m23 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m23)
        _m24 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m24)
        _m31 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m31)
        _m32 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m32)
        _m33 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m33)
        _m34 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m34)
        _m41 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m41)
        _m42 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m42)
        _m43 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m43)
        _m44 = ReadWriteAttribute(jsObject: jsObject, name: Strings.m44)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(init: __UNSUPPORTED_UNION__? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(`init`?.jsValue() ?? .undefined))
    }

    // XXX: illegal static override
    // override public static func fromMatrix(other: DOMMatrixInit? = nil) -> Self

    // XXX: illegal static override
    // override public static func fromFloat32Array(array32: Float32Array) -> Self

    // XXX: illegal static override
    // override public static func fromFloat64Array(array64: Float64Array) -> Self

    private var _a: ReadWriteAttribute<Double>
    override public var a: Double {
        get { _a.wrappedValue }
        set { _a.wrappedValue = newValue }
    }

    private var _b: ReadWriteAttribute<Double>
    override public var b: Double {
        get { _b.wrappedValue }
        set { _b.wrappedValue = newValue }
    }

    private var _c: ReadWriteAttribute<Double>
    override public var c: Double {
        get { _c.wrappedValue }
        set { _c.wrappedValue = newValue }
    }

    private var _d: ReadWriteAttribute<Double>
    override public var d: Double {
        get { _d.wrappedValue }
        set { _d.wrappedValue = newValue }
    }

    private var _e: ReadWriteAttribute<Double>
    override public var e: Double {
        get { _e.wrappedValue }
        set { _e.wrappedValue = newValue }
    }

    private var _f: ReadWriteAttribute<Double>
    override public var f: Double {
        get { _f.wrappedValue }
        set { _f.wrappedValue = newValue }
    }

    private var _m11: ReadWriteAttribute<Double>
    override public var m11: Double {
        get { _m11.wrappedValue }
        set { _m11.wrappedValue = newValue }
    }

    private var _m12: ReadWriteAttribute<Double>
    override public var m12: Double {
        get { _m12.wrappedValue }
        set { _m12.wrappedValue = newValue }
    }

    private var _m13: ReadWriteAttribute<Double>
    override public var m13: Double {
        get { _m13.wrappedValue }
        set { _m13.wrappedValue = newValue }
    }

    private var _m14: ReadWriteAttribute<Double>
    override public var m14: Double {
        get { _m14.wrappedValue }
        set { _m14.wrappedValue = newValue }
    }

    private var _m21: ReadWriteAttribute<Double>
    override public var m21: Double {
        get { _m21.wrappedValue }
        set { _m21.wrappedValue = newValue }
    }

    private var _m22: ReadWriteAttribute<Double>
    override public var m22: Double {
        get { _m22.wrappedValue }
        set { _m22.wrappedValue = newValue }
    }

    private var _m23: ReadWriteAttribute<Double>
    override public var m23: Double {
        get { _m23.wrappedValue }
        set { _m23.wrappedValue = newValue }
    }

    private var _m24: ReadWriteAttribute<Double>
    override public var m24: Double {
        get { _m24.wrappedValue }
        set { _m24.wrappedValue = newValue }
    }

    private var _m31: ReadWriteAttribute<Double>
    override public var m31: Double {
        get { _m31.wrappedValue }
        set { _m31.wrappedValue = newValue }
    }

    private var _m32: ReadWriteAttribute<Double>
    override public var m32: Double {
        get { _m32.wrappedValue }
        set { _m32.wrappedValue = newValue }
    }

    private var _m33: ReadWriteAttribute<Double>
    override public var m33: Double {
        get { _m33.wrappedValue }
        set { _m33.wrappedValue = newValue }
    }

    private var _m34: ReadWriteAttribute<Double>
    override public var m34: Double {
        get { _m34.wrappedValue }
        set { _m34.wrappedValue = newValue }
    }

    private var _m41: ReadWriteAttribute<Double>
    override public var m41: Double {
        get { _m41.wrappedValue }
        set { _m41.wrappedValue = newValue }
    }

    private var _m42: ReadWriteAttribute<Double>
    override public var m42: Double {
        get { _m42.wrappedValue }
        set { _m42.wrappedValue = newValue }
    }

    private var _m43: ReadWriteAttribute<Double>
    override public var m43: Double {
        get { _m43.wrappedValue }
        set { _m43.wrappedValue = newValue }
    }

    private var _m44: ReadWriteAttribute<Double>
    override public var m44: Double {
        get { _m44.wrappedValue }
        set { _m44.wrappedValue = newValue }
    }

    public func multiplySelf(other: DOMMatrixInit? = nil) -> Self {
        jsObject[Strings.multiplySelf]!(other?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func preMultiplySelf(other: DOMMatrixInit? = nil) -> Self {
        jsObject[Strings.preMultiplySelf]!(other?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func translateSelf(tx: Double? = nil, ty: Double? = nil, tz: Double? = nil) -> Self {
        jsObject[Strings.translateSelf]!(tx?.jsValue() ?? .undefined, ty?.jsValue() ?? .undefined, tz?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func scaleSelf(scaleX: Double? = nil, scaleY: Double? = nil, scaleZ: Double? = nil, originX: Double? = nil, originY: Double? = nil, originZ: Double? = nil) -> Self {
        let _arg0 = scaleX?.jsValue() ?? .undefined
        let _arg1 = scaleY?.jsValue() ?? .undefined
        let _arg2 = scaleZ?.jsValue() ?? .undefined
        let _arg3 = originX?.jsValue() ?? .undefined
        let _arg4 = originY?.jsValue() ?? .undefined
        let _arg5 = originZ?.jsValue() ?? .undefined
        return jsObject[Strings.scaleSelf]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5).fromJSValue()!
    }

    public func scale3dSelf(scale: Double? = nil, originX: Double? = nil, originY: Double? = nil, originZ: Double? = nil) -> Self {
        jsObject[Strings.scale3dSelf]!(scale?.jsValue() ?? .undefined, originX?.jsValue() ?? .undefined, originY?.jsValue() ?? .undefined, originZ?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func rotateSelf(rotX: Double? = nil, rotY: Double? = nil, rotZ: Double? = nil) -> Self {
        jsObject[Strings.rotateSelf]!(rotX?.jsValue() ?? .undefined, rotY?.jsValue() ?? .undefined, rotZ?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func rotateFromVectorSelf(x: Double? = nil, y: Double? = nil) -> Self {
        jsObject[Strings.rotateFromVectorSelf]!(x?.jsValue() ?? .undefined, y?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func rotateAxisAngleSelf(x: Double? = nil, y: Double? = nil, z: Double? = nil, angle: Double? = nil) -> Self {
        jsObject[Strings.rotateAxisAngleSelf]!(x?.jsValue() ?? .undefined, y?.jsValue() ?? .undefined, z?.jsValue() ?? .undefined, angle?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func skewXSelf(sx: Double? = nil) -> Self {
        jsObject[Strings.skewXSelf]!(sx?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func skewYSelf(sy: Double? = nil) -> Self {
        jsObject[Strings.skewYSelf]!(sy?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func invertSelf() -> Self {
        jsObject[Strings.invertSelf]!().fromJSValue()!
    }

    public func setMatrixValue(transformList: String) -> Self {
        jsObject[Strings.setMatrixValue]!(transformList.jsValue()).fromJSValue()!
    }
}
