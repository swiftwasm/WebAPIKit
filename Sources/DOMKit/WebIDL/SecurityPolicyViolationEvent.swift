// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SecurityPolicyViolationEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.SecurityPolicyViolationEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _documentURI = ReadonlyAttribute(jsObject: jsObject, name: Strings.documentURI)
        _referrer = ReadonlyAttribute(jsObject: jsObject, name: Strings.referrer)
        _blockedURI = ReadonlyAttribute(jsObject: jsObject, name: Strings.blockedURI)
        _effectiveDirective = ReadonlyAttribute(jsObject: jsObject, name: Strings.effectiveDirective)
        _violatedDirective = ReadonlyAttribute(jsObject: jsObject, name: Strings.violatedDirective)
        _originalPolicy = ReadonlyAttribute(jsObject: jsObject, name: Strings.originalPolicy)
        _sourceFile = ReadonlyAttribute(jsObject: jsObject, name: Strings.sourceFile)
        _sample = ReadonlyAttribute(jsObject: jsObject, name: Strings.sample)
        _disposition = ReadonlyAttribute(jsObject: jsObject, name: Strings.disposition)
        _statusCode = ReadonlyAttribute(jsObject: jsObject, name: Strings.statusCode)
        _lineNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.lineNumber)
        _columnNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.columnNumber)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: SecurityPolicyViolationEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var documentURI: String

    @ReadonlyAttribute
    public var referrer: String

    @ReadonlyAttribute
    public var blockedURI: String

    @ReadonlyAttribute
    public var effectiveDirective: String

    @ReadonlyAttribute
    public var violatedDirective: String

    @ReadonlyAttribute
    public var originalPolicy: String

    @ReadonlyAttribute
    public var sourceFile: String

    @ReadonlyAttribute
    public var sample: String

    @ReadonlyAttribute
    public var disposition: SecurityPolicyViolationEventDisposition

    @ReadonlyAttribute
    public var statusCode: UInt16

    @ReadonlyAttribute
    public var lineNumber: UInt32

    @ReadonlyAttribute
    public var columnNumber: UInt32
}
