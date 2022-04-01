// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMRectReadOnly: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DOMRectReadOnly.function! }

    private enum Keys {
        static let width: JSString = "width"
        static let fromRect: JSString = "fromRect"
        static let x: JSString = "x"
        static let y: JSString = "y"
        static let left: JSString = "left"
        static let height: JSString = "height"
        static let right: JSString = "right"
        static let bottom: JSString = "bottom"
        static let top: JSString = "top"
        static let toJSON: JSString = "toJSON"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadonlyAttribute(jsObject: jsObject, name: Keys.x)
        _y = ReadonlyAttribute(jsObject: jsObject, name: Keys.y)
        _width = ReadonlyAttribute(jsObject: jsObject, name: Keys.width)
        _height = ReadonlyAttribute(jsObject: jsObject, name: Keys.height)
        _top = ReadonlyAttribute(jsObject: jsObject, name: Keys.top)
        _right = ReadonlyAttribute(jsObject: jsObject, name: Keys.right)
        _bottom = ReadonlyAttribute(jsObject: jsObject, name: Keys.bottom)
        _left = ReadonlyAttribute(jsObject: jsObject, name: Keys.left)
        self.jsObject = jsObject
    }

    public convenience init(x: Double? = nil, y: Double? = nil, width: Double? = nil, height: Double? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(x?.jsValue() ?? .undefined, y?.jsValue() ?? .undefined, width?.jsValue() ?? .undefined, height?.jsValue() ?? .undefined))
    }

    public static func fromRect(other: DOMRectInit? = nil) -> Self {
        constructor[Keys.fromRect]!(other?.jsValue() ?? .undefined).fromJSValue()!
    }

    @ReadonlyAttribute
    public var x: Double

    @ReadonlyAttribute
    public var y: Double

    @ReadonlyAttribute
    public var width: Double

    @ReadonlyAttribute
    public var height: Double

    @ReadonlyAttribute
    public var top: Double

    @ReadonlyAttribute
    public var right: Double

    @ReadonlyAttribute
    public var bottom: Double

    @ReadonlyAttribute
    public var left: Double

    public func toJSON() -> JSObject {
        jsObject[Keys.toJSON]!().fromJSValue()!
    }
}
