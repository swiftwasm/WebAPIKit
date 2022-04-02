// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CSPViolationReportBody: ReportBody {
    override public class var constructor: JSFunction { JSObject.global[Strings.CSPViolationReportBody].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _documentURL = ReadonlyAttribute(jsObject: jsObject, name: Strings.documentURL)
        _referrer = ReadonlyAttribute(jsObject: jsObject, name: Strings.referrer)
        _blockedURL = ReadonlyAttribute(jsObject: jsObject, name: Strings.blockedURL)
        _effectiveDirective = ReadonlyAttribute(jsObject: jsObject, name: Strings.effectiveDirective)
        _originalPolicy = ReadonlyAttribute(jsObject: jsObject, name: Strings.originalPolicy)
        _sourceFile = ReadonlyAttribute(jsObject: jsObject, name: Strings.sourceFile)
        _sample = ReadonlyAttribute(jsObject: jsObject, name: Strings.sample)
        _disposition = ReadonlyAttribute(jsObject: jsObject, name: Strings.disposition)
        _statusCode = ReadonlyAttribute(jsObject: jsObject, name: Strings.statusCode)
        _lineNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.lineNumber)
        _columnNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.columnNumber)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var documentURL: String

    @ReadonlyAttribute
    public var referrer: String?

    @ReadonlyAttribute
    public var blockedURL: String?

    @ReadonlyAttribute
    public var effectiveDirective: String

    @ReadonlyAttribute
    public var originalPolicy: String

    @ReadonlyAttribute
    public var sourceFile: String?

    @ReadonlyAttribute
    public var sample: String?

    @ReadonlyAttribute
    public var disposition: SecurityPolicyViolationEventDisposition

    @ReadonlyAttribute
    public var statusCode: UInt16

    @ReadonlyAttribute
    public var lineNumber: UInt32?

    @ReadonlyAttribute
    public var columnNumber: UInt32?
}