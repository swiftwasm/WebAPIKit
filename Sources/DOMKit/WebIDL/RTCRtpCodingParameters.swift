// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpCodingParameters: BridgedDictionary {
    public convenience init(rid: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.rid] = rid.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _rid = ReadWriteAttribute(jsObject: object, name: Strings.rid)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var rid: String
}
