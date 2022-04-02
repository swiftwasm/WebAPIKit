// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NDEFMessageInit: BridgedDictionary {
    public convenience init(records: [NDEFRecordInit]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.records] = records.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _records = ReadWriteAttribute(jsObject: object, name: Strings.records)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var records: [NDEFRecordInit]
}