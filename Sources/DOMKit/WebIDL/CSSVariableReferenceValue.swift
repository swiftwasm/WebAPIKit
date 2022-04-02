// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSVariableReferenceValue: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.CSSVariableReferenceValue].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _variable = ReadWriteAttribute(jsObject: jsObject, name: Strings.variable)
        _fallback = ReadonlyAttribute(jsObject: jsObject, name: Strings.fallback)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(variable: String, fallback: CSSUnparsedValue? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [variable.jsValue(), fallback?.jsValue() ?? .undefined]))
    }

    @ReadWriteAttribute
    public var variable: String

    @ReadonlyAttribute
    public var fallback: CSSUnparsedValue?
}
