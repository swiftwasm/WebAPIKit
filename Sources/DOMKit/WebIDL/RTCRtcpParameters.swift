// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtcpParameters: BridgedDictionary {
    public convenience init(cname: String, reducedSize: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.cname] = cname.jsValue()
        object[Strings.reducedSize] = reducedSize.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _cname = ReadWriteAttribute(jsObject: object, name: Strings.cname)
        _reducedSize = ReadWriteAttribute(jsObject: object, name: Strings.reducedSize)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var cname: String

    @ReadWriteAttribute
    public var reducedSize: Bool
}