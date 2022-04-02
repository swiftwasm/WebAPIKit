// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PermissionsPolicyViolationReportBody: ReportBody {
    override public class var constructor: JSFunction { JSObject.global[Strings.PermissionsPolicyViolationReportBody].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _featureId = ReadonlyAttribute(jsObject: jsObject, name: Strings.featureId)
        _sourceFile = ReadonlyAttribute(jsObject: jsObject, name: Strings.sourceFile)
        _lineNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.lineNumber)
        _columnNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.columnNumber)
        _disposition = ReadonlyAttribute(jsObject: jsObject, name: Strings.disposition)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var featureId: String

    @ReadonlyAttribute
    public var sourceFile: String?

    @ReadonlyAttribute
    public var lineNumber: Int32?

    @ReadonlyAttribute
    public var columnNumber: Int32?

    @ReadonlyAttribute
    public var disposition: String
}
