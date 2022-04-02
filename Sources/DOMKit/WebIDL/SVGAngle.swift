// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SVGAngle: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.SVGAngle].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _unitType = ReadonlyAttribute(jsObject: jsObject, name: Strings.unitType)
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        _valueInSpecifiedUnits = ReadWriteAttribute(jsObject: jsObject, name: Strings.valueInSpecifiedUnits)
        _valueAsString = ReadWriteAttribute(jsObject: jsObject, name: Strings.valueAsString)
        self.jsObject = jsObject
    }

    public static let SVG_ANGLETYPE_UNKNOWN: UInt16 = 0

    public static let SVG_ANGLETYPE_UNSPECIFIED: UInt16 = 1

    public static let SVG_ANGLETYPE_DEG: UInt16 = 2

    public static let SVG_ANGLETYPE_RAD: UInt16 = 3

    public static let SVG_ANGLETYPE_GRAD: UInt16 = 4

    @ReadonlyAttribute
    public var unitType: UInt16

    @ReadWriteAttribute
    public var value: Float

    @ReadWriteAttribute
    public var valueInSpecifiedUnits: Float

    @ReadWriteAttribute
    public var valueAsString: String

    public func newValueSpecifiedUnits(unitType: UInt16, valueInSpecifiedUnits: Float) {
        _ = jsObject[Strings.newValueSpecifiedUnits]!(unitType.jsValue(), valueInSpecifiedUnits.jsValue())
    }

    public func convertToSpecifiedUnits(unitType: UInt16) {
        _ = jsObject[Strings.convertToSpecifiedUnits]!(unitType.jsValue())
    }
}