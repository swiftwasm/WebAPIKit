// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpStreamStats: BridgedDictionary {
    public convenience init(ssrc: UInt32, kind: String, transportId: String, codecId: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.ssrc] = ssrc.jsValue
        object[Strings.kind] = kind.jsValue
        object[Strings.transportId] = transportId.jsValue
        object[Strings.codecId] = codecId.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _ssrc = ReadWriteAttribute(jsObject: object, name: Strings.ssrc)
        _kind = ReadWriteAttribute(jsObject: object, name: Strings.kind)
        _transportId = ReadWriteAttribute(jsObject: object, name: Strings.transportId)
        _codecId = ReadWriteAttribute(jsObject: object, name: Strings.codecId)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var ssrc: UInt32

    @ReadWriteAttribute
    public var kind: String

    @ReadWriteAttribute
    public var transportId: String

    @ReadWriteAttribute
    public var codecId: String
}
