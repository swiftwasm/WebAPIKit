// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextFormat: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.TextFormat].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _rangeStart = ReadWriteAttribute(jsObject: jsObject, name: Strings.rangeStart)
        _rangeEnd = ReadWriteAttribute(jsObject: jsObject, name: Strings.rangeEnd)
        _textColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.textColor)
        _backgroundColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.backgroundColor)
        _underlineStyle = ReadWriteAttribute(jsObject: jsObject, name: Strings.underlineStyle)
        _underlineThickness = ReadWriteAttribute(jsObject: jsObject, name: Strings.underlineThickness)
        _underlineColor = ReadWriteAttribute(jsObject: jsObject, name: Strings.underlineColor)
        self.jsObject = jsObject
    }

    public convenience init(options: TextFormatInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(options?.jsValue() ?? .undefined))
    }

    @ReadWriteAttribute
    public var rangeStart: UInt32

    @ReadWriteAttribute
    public var rangeEnd: UInt32

    @ReadWriteAttribute
    public var textColor: String

    @ReadWriteAttribute
    public var backgroundColor: String

    @ReadWriteAttribute
    public var underlineStyle: String

    @ReadWriteAttribute
    public var underlineThickness: String

    @ReadWriteAttribute
    public var underlineColor: String
}