// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GPUCompilationMessage: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.GPUCompilationMessage].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _message = ReadonlyAttribute(jsObject: jsObject, name: Strings.message)
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _lineNum = ReadonlyAttribute(jsObject: jsObject, name: Strings.lineNum)
        _linePos = ReadonlyAttribute(jsObject: jsObject, name: Strings.linePos)
        _offset = ReadonlyAttribute(jsObject: jsObject, name: Strings.offset)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var message: String

    @ReadonlyAttribute
    public var type: GPUCompilationMessageType

    @ReadonlyAttribute
    public var lineNum: UInt64

    @ReadonlyAttribute
    public var linePos: UInt64

    @ReadonlyAttribute
    public var offset: UInt64

    @ReadonlyAttribute
    public var length: UInt64
}