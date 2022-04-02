// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMMatrixReadOnly: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.DOMMatrixReadOnly].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _a = ReadonlyAttribute(jsObject: jsObject, name: Strings.a)
        _b = ReadonlyAttribute(jsObject: jsObject, name: Strings.b)
        _c = ReadonlyAttribute(jsObject: jsObject, name: Strings.c)
        _d = ReadonlyAttribute(jsObject: jsObject, name: Strings.d)
        _e = ReadonlyAttribute(jsObject: jsObject, name: Strings.e)
        _f = ReadonlyAttribute(jsObject: jsObject, name: Strings.f)
        _m11 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m11)
        _m12 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m12)
        _m13 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m13)
        _m14 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m14)
        _m21 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m21)
        _m22 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m22)
        _m23 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m23)
        _m24 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m24)
        _m31 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m31)
        _m32 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m32)
        _m33 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m33)
        _m34 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m34)
        _m41 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m41)
        _m42 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m42)
        _m43 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m43)
        _m44 = ReadonlyAttribute(jsObject: jsObject, name: Strings.m44)
        _is2D = ReadonlyAttribute(jsObject: jsObject, name: Strings.is2D)
        _isIdentity = ReadonlyAttribute(jsObject: jsObject, name: Strings.isIdentity)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(init: __UNSUPPORTED_UNION__? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [`init`?.jsValue() ?? .undefined]))
    }

    @inlinable public static func fromMatrix(other: DOMMatrixInit? = nil) -> Self {
        let this = constructor
        return this[Strings.fromMatrix].function!(this: this, arguments: [other?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public static func fromFloat32Array(array32: Float32Array) -> Self {
        let this = constructor
        return this[Strings.fromFloat32Array].function!(this: this, arguments: [array32.jsValue()]).fromJSValue()!
    }

    @inlinable public static func fromFloat64Array(array64: Float64Array) -> Self {
        let this = constructor
        return this[Strings.fromFloat64Array].function!(this: this, arguments: [array64.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var a: Double

    @ReadonlyAttribute
    public var b: Double

    @ReadonlyAttribute
    public var c: Double

    @ReadonlyAttribute
    public var d: Double

    @ReadonlyAttribute
    public var e: Double

    @ReadonlyAttribute
    public var f: Double

    @ReadonlyAttribute
    public var m11: Double

    @ReadonlyAttribute
    public var m12: Double

    @ReadonlyAttribute
    public var m13: Double

    @ReadonlyAttribute
    public var m14: Double

    @ReadonlyAttribute
    public var m21: Double

    @ReadonlyAttribute
    public var m22: Double

    @ReadonlyAttribute
    public var m23: Double

    @ReadonlyAttribute
    public var m24: Double

    @ReadonlyAttribute
    public var m31: Double

    @ReadonlyAttribute
    public var m32: Double

    @ReadonlyAttribute
    public var m33: Double

    @ReadonlyAttribute
    public var m34: Double

    @ReadonlyAttribute
    public var m41: Double

    @ReadonlyAttribute
    public var m42: Double

    @ReadonlyAttribute
    public var m43: Double

    @ReadonlyAttribute
    public var m44: Double

    @ReadonlyAttribute
    public var is2D: Bool

    @ReadonlyAttribute
    public var isIdentity: Bool

    @inlinable public func translate(tx: Double? = nil, ty: Double? = nil, tz: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.translate].function!(this: this, arguments: [tx?.jsValue() ?? .undefined, ty?.jsValue() ?? .undefined, tz?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func scale(scaleX: Double? = nil, scaleY: Double? = nil, scaleZ: Double? = nil, originX: Double? = nil, originY: Double? = nil, originZ: Double? = nil) -> DOMMatrix {
        let _arg0 = scaleX?.jsValue() ?? .undefined
        let _arg1 = scaleY?.jsValue() ?? .undefined
        let _arg2 = scaleZ?.jsValue() ?? .undefined
        let _arg3 = originX?.jsValue() ?? .undefined
        let _arg4 = originY?.jsValue() ?? .undefined
        let _arg5 = originZ?.jsValue() ?? .undefined
        let this = jsObject
        return this[Strings.scale].function!(this: this, arguments: [_arg0, _arg1, _arg2, _arg3, _arg4, _arg5]).fromJSValue()!
    }

    @inlinable public func scaleNonUniform(scaleX: Double? = nil, scaleY: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.scaleNonUniform].function!(this: this, arguments: [scaleX?.jsValue() ?? .undefined, scaleY?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func scale3d(scale: Double? = nil, originX: Double? = nil, originY: Double? = nil, originZ: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.scale3d].function!(this: this, arguments: [scale?.jsValue() ?? .undefined, originX?.jsValue() ?? .undefined, originY?.jsValue() ?? .undefined, originZ?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func rotate(rotX: Double? = nil, rotY: Double? = nil, rotZ: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.rotate].function!(this: this, arguments: [rotX?.jsValue() ?? .undefined, rotY?.jsValue() ?? .undefined, rotZ?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func rotateFromVector(x: Double? = nil, y: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.rotateFromVector].function!(this: this, arguments: [x?.jsValue() ?? .undefined, y?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func rotateAxisAngle(x: Double? = nil, y: Double? = nil, z: Double? = nil, angle: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.rotateAxisAngle].function!(this: this, arguments: [x?.jsValue() ?? .undefined, y?.jsValue() ?? .undefined, z?.jsValue() ?? .undefined, angle?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func skewX(sx: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.skewX].function!(this: this, arguments: [sx?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func skewY(sy: Double? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.skewY].function!(this: this, arguments: [sy?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func multiply(other: DOMMatrixInit? = nil) -> DOMMatrix {
        let this = jsObject
        return this[Strings.multiply].function!(this: this, arguments: [other?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func flipX() -> DOMMatrix {
        let this = jsObject
        return this[Strings.flipX].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func flipY() -> DOMMatrix {
        let this = jsObject
        return this[Strings.flipY].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func inverse() -> DOMMatrix {
        let this = jsObject
        return this[Strings.inverse].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func transformPoint(point: DOMPointInit? = nil) -> DOMPoint {
        let this = jsObject
        return this[Strings.transformPoint].function!(this: this, arguments: [point?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func toFloat32Array() -> Float32Array {
        let this = jsObject
        return this[Strings.toFloat32Array].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public func toFloat64Array() -> Float64Array {
        let this = jsObject
        return this[Strings.toFloat64Array].function!(this: this, arguments: []).fromJSValue()!
    }

    @inlinable public var description: String {
        jsObject[Strings.toString]!().fromJSValue()!
    }

    @inlinable public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
