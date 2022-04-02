// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ValidityStateFlags: BridgedDictionary {
    public convenience init(valueMissing: Bool, typeMismatch: Bool, patternMismatch: Bool, tooLong: Bool, tooShort: Bool, rangeUnderflow: Bool, rangeOverflow: Bool, stepMismatch: Bool, badInput: Bool, customError: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.valueMissing] = valueMissing.jsValue()
        object[Strings.typeMismatch] = typeMismatch.jsValue()
        object[Strings.patternMismatch] = patternMismatch.jsValue()
        object[Strings.tooLong] = tooLong.jsValue()
        object[Strings.tooShort] = tooShort.jsValue()
        object[Strings.rangeUnderflow] = rangeUnderflow.jsValue()
        object[Strings.rangeOverflow] = rangeOverflow.jsValue()
        object[Strings.stepMismatch] = stepMismatch.jsValue()
        object[Strings.badInput] = badInput.jsValue()
        object[Strings.customError] = customError.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _valueMissing = ReadWriteAttribute(jsObject: object, name: Strings.valueMissing)
        _typeMismatch = ReadWriteAttribute(jsObject: object, name: Strings.typeMismatch)
        _patternMismatch = ReadWriteAttribute(jsObject: object, name: Strings.patternMismatch)
        _tooLong = ReadWriteAttribute(jsObject: object, name: Strings.tooLong)
        _tooShort = ReadWriteAttribute(jsObject: object, name: Strings.tooShort)
        _rangeUnderflow = ReadWriteAttribute(jsObject: object, name: Strings.rangeUnderflow)
        _rangeOverflow = ReadWriteAttribute(jsObject: object, name: Strings.rangeOverflow)
        _stepMismatch = ReadWriteAttribute(jsObject: object, name: Strings.stepMismatch)
        _badInput = ReadWriteAttribute(jsObject: object, name: Strings.badInput)
        _customError = ReadWriteAttribute(jsObject: object, name: Strings.customError)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var valueMissing: Bool

    @ReadWriteAttribute
    public var typeMismatch: Bool

    @ReadWriteAttribute
    public var patternMismatch: Bool

    @ReadWriteAttribute
    public var tooLong: Bool

    @ReadWriteAttribute
    public var tooShort: Bool

    @ReadWriteAttribute
    public var rangeUnderflow: Bool

    @ReadWriteAttribute
    public var rangeOverflow: Bool

    @ReadWriteAttribute
    public var stepMismatch: Bool

    @ReadWriteAttribute
    public var badInput: Bool

    @ReadWriteAttribute
    public var customError: Bool
}
