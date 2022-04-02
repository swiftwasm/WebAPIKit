// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HIDReportInfo: BridgedDictionary {
    public convenience init(reportId: UInt8, items: [HIDReportItem]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.reportId] = reportId.jsValue()
        object[Strings.items] = items.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _reportId = ReadWriteAttribute(jsObject: object, name: Strings.reportId)
        _items = ReadWriteAttribute(jsObject: object, name: Strings.items)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var reportId: UInt8

    @ReadWriteAttribute
    public var items: [HIDReportItem]
}
