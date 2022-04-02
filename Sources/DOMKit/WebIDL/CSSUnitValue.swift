// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSSUnitValue: CSSNumericValue {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.CSSUnitValue].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        _unit = ReadonlyAttribute(jsObject: jsObject, name: Strings.unit)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(value: Double, unit: String) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [value.jsValue(), unit.jsValue()]))
    }

    @ReadWriteAttribute
    public var value: Double

    @ReadonlyAttribute
    public var unit: String
}
