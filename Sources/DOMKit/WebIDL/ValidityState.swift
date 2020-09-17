
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class ValidityState: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.ValidityState.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _valueMissing = ReadonlyAttribute(jsObject: jsObject, name: "valueMissing")
        _typeMismatch = ReadonlyAttribute(jsObject: jsObject, name: "typeMismatch")
        _patternMismatch = ReadonlyAttribute(jsObject: jsObject, name: "patternMismatch")
        _tooLong = ReadonlyAttribute(jsObject: jsObject, name: "tooLong")
        _tooShort = ReadonlyAttribute(jsObject: jsObject, name: "tooShort")
        _rangeUnderflow = ReadonlyAttribute(jsObject: jsObject, name: "rangeUnderflow")
        _rangeOverflow = ReadonlyAttribute(jsObject: jsObject, name: "rangeOverflow")
        _stepMismatch = ReadonlyAttribute(jsObject: jsObject, name: "stepMismatch")
        _badInput = ReadonlyAttribute(jsObject: jsObject, name: "badInput")
        _customError = ReadonlyAttribute(jsObject: jsObject, name: "customError")
        _valid = ReadonlyAttribute(jsObject: jsObject, name: "valid")
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var valueMissing: Bool

    @ReadonlyAttribute
    public var typeMismatch: Bool

    @ReadonlyAttribute
    public var patternMismatch: Bool

    @ReadonlyAttribute
    public var tooLong: Bool

    @ReadonlyAttribute
    public var tooShort: Bool

    @ReadonlyAttribute
    public var rangeUnderflow: Bool

    @ReadonlyAttribute
    public var rangeOverflow: Bool

    @ReadonlyAttribute
    public var stepMismatch: Bool

    @ReadonlyAttribute
    public var badInput: Bool

    @ReadonlyAttribute
    public var customError: Bool

    @ReadonlyAttribute
    public var valid: Bool
}
