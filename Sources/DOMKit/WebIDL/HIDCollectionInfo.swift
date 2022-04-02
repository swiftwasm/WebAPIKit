// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HIDCollectionInfo: BridgedDictionary {
    public convenience init(usagePage: UInt16, usage: UInt16, type: UInt8, children: [HIDCollectionInfo], inputReports: [HIDReportInfo], outputReports: [HIDReportInfo], featureReports: [HIDReportInfo]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.usagePage] = usagePage.jsValue()
        object[Strings.usage] = usage.jsValue()
        object[Strings.type] = type.jsValue()
        object[Strings.children] = children.jsValue()
        object[Strings.inputReports] = inputReports.jsValue()
        object[Strings.outputReports] = outputReports.jsValue()
        object[Strings.featureReports] = featureReports.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _usagePage = ReadWriteAttribute(jsObject: object, name: Strings.usagePage)
        _usage = ReadWriteAttribute(jsObject: object, name: Strings.usage)
        _type = ReadWriteAttribute(jsObject: object, name: Strings.type)
        _children = ReadWriteAttribute(jsObject: object, name: Strings.children)
        _inputReports = ReadWriteAttribute(jsObject: object, name: Strings.inputReports)
        _outputReports = ReadWriteAttribute(jsObject: object, name: Strings.outputReports)
        _featureReports = ReadWriteAttribute(jsObject: object, name: Strings.featureReports)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var usagePage: UInt16

    @ReadWriteAttribute
    public var usage: UInt16

    @ReadWriteAttribute
    public var type: UInt8

    @ReadWriteAttribute
    public var children: [HIDCollectionInfo]

    @ReadWriteAttribute
    public var inputReports: [HIDReportInfo]

    @ReadWriteAttribute
    public var outputReports: [HIDReportInfo]

    @ReadWriteAttribute
    public var featureReports: [HIDReportInfo]
}