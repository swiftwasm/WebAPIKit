// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMPoint: DOMPointReadOnly {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.DOMPoint].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadWriteAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadWriteAttribute(jsObject: jsObject, name: Strings.y)
        _z = ReadWriteAttribute(jsObject: jsObject, name: Strings.z)
        _w = ReadWriteAttribute(jsObject: jsObject, name: Strings.w)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(x: Double? = nil, y: Double? = nil, z: Double? = nil, w: Double? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [x?.jsValue ?? .undefined, y?.jsValue ?? .undefined, z?.jsValue ?? .undefined, w?.jsValue ?? .undefined]))
    }

    // XXX: illegal static override
    // override public static func fromPoint(other: DOMPointInit? = nil) -> Self

    @usableFromInline let _x: ReadWriteAttribute<Double>
    @inlinable override public var x: Double {
        get { _x.wrappedValue }
        set { _x.wrappedValue = newValue }
    }

    @usableFromInline let _y: ReadWriteAttribute<Double>
    @inlinable override public var y: Double {
        get { _y.wrappedValue }
        set { _y.wrappedValue = newValue }
    }

    @usableFromInline let _z: ReadWriteAttribute<Double>
    @inlinable override public var z: Double {
        get { _z.wrappedValue }
        set { _z.wrappedValue = newValue }
    }

    @usableFromInline let _w: ReadWriteAttribute<Double>
    @inlinable override public var w: Double {
        get { _w.wrappedValue }
        set { _w.wrappedValue = newValue }
    }
}
