
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class ValidityState: JSBridgedClass {
    public class var classRef: JSFunctionRef { JSObjectRef.global.ValidityState.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        _valueMissing = ReadonlyAttribute(objectRef: objectRef, name: "valueMissing")
        _typeMismatch = ReadonlyAttribute(objectRef: objectRef, name: "typeMismatch")
        _patternMismatch = ReadonlyAttribute(objectRef: objectRef, name: "patternMismatch")
        _tooLong = ReadonlyAttribute(objectRef: objectRef, name: "tooLong")
        _tooShort = ReadonlyAttribute(objectRef: objectRef, name: "tooShort")
        _rangeUnderflow = ReadonlyAttribute(objectRef: objectRef, name: "rangeUnderflow")
        _rangeOverflow = ReadonlyAttribute(objectRef: objectRef, name: "rangeOverflow")
        _stepMismatch = ReadonlyAttribute(objectRef: objectRef, name: "stepMismatch")
        _badInput = ReadonlyAttribute(objectRef: objectRef, name: "badInput")
        _customError = ReadonlyAttribute(objectRef: objectRef, name: "customError")
        _valid = ReadonlyAttribute(objectRef: objectRef, name: "valid")
        self.objectRef = objectRef
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
