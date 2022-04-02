// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMPointReadOnly: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.DOMPointReadOnly].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadonlyAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadonlyAttribute(jsObject: jsObject, name: Strings.y)
        _z = ReadonlyAttribute(jsObject: jsObject, name: Strings.z)
        _w = ReadonlyAttribute(jsObject: jsObject, name: Strings.w)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(x: Double? = nil, y: Double? = nil, z: Double? = nil, w: Double? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [x?.jsValue() ?? .undefined, y?.jsValue() ?? .undefined, z?.jsValue() ?? .undefined, w?.jsValue() ?? .undefined]))
    }

    @inlinable public static func fromPoint(other: DOMPointInit? = nil) -> Self {
        let this = constructor
        return this[Strings.fromPoint].function!(this: this, arguments: [other?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var x: Double

    @ReadonlyAttribute
    public var y: Double

    @ReadonlyAttribute
    public var z: Double

    @ReadonlyAttribute
    public var w: Double

    @inlinable public func matrixTransform(matrix: DOMMatrixInit? = nil) -> DOMPoint {
        let this = jsObject
        return this[Strings.matrixTransform].function!(this: this, arguments: [matrix?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @inlinable public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
