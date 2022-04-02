// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WebTransportStats: BridgedDictionary {
    public convenience init(timestamp: DOMHighResTimeStamp, bytesSent: UInt64, packetsSent: UInt64, packetsLost: UInt64, numOutgoingStreamsCreated: UInt32, numIncomingStreamsCreated: UInt32, bytesReceived: UInt64, packetsReceived: UInt64, smoothedRtt: DOMHighResTimeStamp, rttVariation: DOMHighResTimeStamp, minRtt: DOMHighResTimeStamp, numReceivedDatagramsDropped: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.timestamp] = timestamp.jsValue()
        object[Strings.bytesSent] = bytesSent.jsValue()
        object[Strings.packetsSent] = packetsSent.jsValue()
        object[Strings.packetsLost] = packetsLost.jsValue()
        object[Strings.numOutgoingStreamsCreated] = numOutgoingStreamsCreated.jsValue()
        object[Strings.numIncomingStreamsCreated] = numIncomingStreamsCreated.jsValue()
        object[Strings.bytesReceived] = bytesReceived.jsValue()
        object[Strings.packetsReceived] = packetsReceived.jsValue()
        object[Strings.smoothedRtt] = smoothedRtt.jsValue()
        object[Strings.rttVariation] = rttVariation.jsValue()
        object[Strings.minRtt] = minRtt.jsValue()
        object[Strings.numReceivedDatagramsDropped] = numReceivedDatagramsDropped.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _timestamp = ReadWriteAttribute(jsObject: object, name: Strings.timestamp)
        _bytesSent = ReadWriteAttribute(jsObject: object, name: Strings.bytesSent)
        _packetsSent = ReadWriteAttribute(jsObject: object, name: Strings.packetsSent)
        _packetsLost = ReadWriteAttribute(jsObject: object, name: Strings.packetsLost)
        _numOutgoingStreamsCreated = ReadWriteAttribute(jsObject: object, name: Strings.numOutgoingStreamsCreated)
        _numIncomingStreamsCreated = ReadWriteAttribute(jsObject: object, name: Strings.numIncomingStreamsCreated)
        _bytesReceived = ReadWriteAttribute(jsObject: object, name: Strings.bytesReceived)
        _packetsReceived = ReadWriteAttribute(jsObject: object, name: Strings.packetsReceived)
        _smoothedRtt = ReadWriteAttribute(jsObject: object, name: Strings.smoothedRtt)
        _rttVariation = ReadWriteAttribute(jsObject: object, name: Strings.rttVariation)
        _minRtt = ReadWriteAttribute(jsObject: object, name: Strings.minRtt)
        _numReceivedDatagramsDropped = ReadWriteAttribute(jsObject: object, name: Strings.numReceivedDatagramsDropped)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var timestamp: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var bytesSent: UInt64

    @ReadWriteAttribute
    public var packetsSent: UInt64

    @ReadWriteAttribute
    public var packetsLost: UInt64

    @ReadWriteAttribute
    public var numOutgoingStreamsCreated: UInt32

    @ReadWriteAttribute
    public var numIncomingStreamsCreated: UInt32

    @ReadWriteAttribute
    public var bytesReceived: UInt64

    @ReadWriteAttribute
    public var packetsReceived: UInt64

    @ReadWriteAttribute
    public var smoothedRtt: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var rttVariation: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var minRtt: DOMHighResTimeStamp

    @ReadWriteAttribute
    public var numReceivedDatagramsDropped: UInt32
}