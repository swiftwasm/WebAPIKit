// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ByteLengthQueuingStrategy: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.ByteLengthQueuingStrategy.function! }

    private enum Keys {
        static let highWaterMark: JSString = "highWaterMark"
        static let size: JSString = "size"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _highWaterMark = ReadonlyAttribute(jsObject: jsObject, name: Keys.highWaterMark)
        _size = ReadonlyAttribute(jsObject: jsObject, name: Keys.size)
        self.jsObject = jsObject
    }

    public convenience init(init: QueuingStrategyInit) {
        self.init(unsafelyWrapping: Self.constructor.new(`init`.jsValue()))
    }

    @ReadonlyAttribute
    public var highWaterMark: Double

    @ReadonlyAttribute
    public var size: JSFunction
}