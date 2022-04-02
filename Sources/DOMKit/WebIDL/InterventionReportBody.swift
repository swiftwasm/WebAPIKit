// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class InterventionReportBody: ReportBody {
    override public class var constructor: JSFunction { JSObject.global[Strings.InterventionReportBody].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _message = ReadonlyAttribute(jsObject: jsObject, name: Strings.message)
        _sourceFile = ReadonlyAttribute(jsObject: jsObject, name: Strings.sourceFile)
        _lineNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.lineNumber)
        _columnNumber = ReadonlyAttribute(jsObject: jsObject, name: Strings.columnNumber)
        super.init(unsafelyWrapping: jsObject)
    }

    override public func toJSON() -> JSObject {
        jsObject[Strings.toJSON]!().fromJSValue()!
    }

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var message: String

    @ReadonlyAttribute
    public var sourceFile: String?

    @ReadonlyAttribute
    public var lineNumber: UInt32?

    @ReadonlyAttribute
    public var columnNumber: UInt32?
}
