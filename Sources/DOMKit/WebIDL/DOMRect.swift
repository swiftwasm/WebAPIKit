// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMRect: DOMRectReadOnly {
    override public class var constructor: JSFunction { JSObject.global.DOMRect.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadWriteAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadWriteAttribute(jsObject: jsObject, name: Strings.y)
        _width = ReadWriteAttribute(jsObject: jsObject, name: Strings.width)
        _height = ReadWriteAttribute(jsObject: jsObject, name: Strings.height)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(x: Double? = nil, y: Double? = nil, width: Double? = nil, height: Double? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(x?.jsValue() ?? .undefined, y?.jsValue() ?? .undefined, width?.jsValue() ?? .undefined, height?.jsValue() ?? .undefined))
    }

    // XXX: illegal static override
    // override public static func fromRect(other: DOMRectInit? = nil) -> Self

    private var _x: ReadWriteAttribute<Double>
    override public var x: Double {
        get { _x.wrappedValue }
        set { _x.wrappedValue = newValue }
    }

    private var _y: ReadWriteAttribute<Double>
    override public var y: Double {
        get { _y.wrappedValue }
        set { _y.wrappedValue = newValue }
    }

    private var _width: ReadWriteAttribute<Double>
    override public var width: Double {
        get { _width.wrappedValue }
        set { _width.wrappedValue = newValue }
    }

    private var _height: ReadWriteAttribute<Double>
    override public var height: Double {
        get { _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }
}
