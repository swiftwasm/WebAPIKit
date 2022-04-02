// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCRtpCodecParameters: BridgedDictionary {
    public convenience init(payloadType: UInt8, mimeType: String, clockRate: UInt32, channels: UInt16, sdpFmtpLine: String) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.payloadType] = payloadType.jsValue()
        object[Strings.mimeType] = mimeType.jsValue()
        object[Strings.clockRate] = clockRate.jsValue()
        object[Strings.channels] = channels.jsValue()
        object[Strings.sdpFmtpLine] = sdpFmtpLine.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _payloadType = ReadWriteAttribute(jsObject: object, name: Strings.payloadType)
        _mimeType = ReadWriteAttribute(jsObject: object, name: Strings.mimeType)
        _clockRate = ReadWriteAttribute(jsObject: object, name: Strings.clockRate)
        _channels = ReadWriteAttribute(jsObject: object, name: Strings.channels)
        _sdpFmtpLine = ReadWriteAttribute(jsObject: object, name: Strings.sdpFmtpLine)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var payloadType: UInt8

    @ReadWriteAttribute
    public var mimeType: String

    @ReadWriteAttribute
    public var clockRate: UInt32

    @ReadWriteAttribute
    public var channels: UInt16

    @ReadWriteAttribute
    public var sdpFmtpLine: String
}
