// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCSctpTransportStats: BridgedDictionary {
    public convenience init(transportId: String, smoothedRoundTripTime: Double, congestionWindow: UInt32, receiverWindow: UInt32, mtu: UInt32, unackData: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.transportId] = transportId.jsValue
        object[Strings.smoothedRoundTripTime] = smoothedRoundTripTime.jsValue
        object[Strings.congestionWindow] = congestionWindow.jsValue
        object[Strings.receiverWindow] = receiverWindow.jsValue
        object[Strings.mtu] = mtu.jsValue
        object[Strings.unackData] = unackData.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _transportId = ReadWriteAttribute(jsObject: object, name: Strings.transportId)
        _smoothedRoundTripTime = ReadWriteAttribute(jsObject: object, name: Strings.smoothedRoundTripTime)
        _congestionWindow = ReadWriteAttribute(jsObject: object, name: Strings.congestionWindow)
        _receiverWindow = ReadWriteAttribute(jsObject: object, name: Strings.receiverWindow)
        _mtu = ReadWriteAttribute(jsObject: object, name: Strings.mtu)
        _unackData = ReadWriteAttribute(jsObject: object, name: Strings.unackData)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var transportId: String

    @ReadWriteAttribute
    public var smoothedRoundTripTime: Double

    @ReadWriteAttribute
    public var congestionWindow: UInt32

    @ReadWriteAttribute
    public var receiverWindow: UInt32

    @ReadWriteAttribute
    public var mtu: UInt32

    @ReadWriteAttribute
    public var unackData: UInt32
}
