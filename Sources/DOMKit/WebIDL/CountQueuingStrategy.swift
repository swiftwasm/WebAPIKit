// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CountQueuingStrategy: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.CountQueuingStrategy.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _highWaterMark = ReadonlyAttribute(jsObject: jsObject, name: "highWaterMark")
        _size = ReadonlyAttribute(jsObject: jsObject, name: "size")
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
