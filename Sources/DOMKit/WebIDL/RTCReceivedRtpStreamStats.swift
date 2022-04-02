// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCReceivedRtpStreamStats: BridgedDictionary {
    public convenience init(packetsReceived: UInt64, packetsLost: Int64, jitter: Double, packetsDiscarded: UInt64, packetsRepaired: UInt64, burstPacketsLost: UInt64, burstPacketsDiscarded: UInt64, burstLossCount: UInt32, burstDiscardCount: UInt32, burstLossRate: Double, burstDiscardRate: Double, gapLossRate: Double, gapDiscardRate: Double, framesDropped: UInt32, partialFramesLost: UInt32, fullFramesLost: UInt32) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.packetsReceived] = packetsReceived.jsValue()
        object[Strings.packetsLost] = packetsLost.jsValue()
        object[Strings.jitter] = jitter.jsValue()
        object[Strings.packetsDiscarded] = packetsDiscarded.jsValue()
        object[Strings.packetsRepaired] = packetsRepaired.jsValue()
        object[Strings.burstPacketsLost] = burstPacketsLost.jsValue()
        object[Strings.burstPacketsDiscarded] = burstPacketsDiscarded.jsValue()
        object[Strings.burstLossCount] = burstLossCount.jsValue()
        object[Strings.burstDiscardCount] = burstDiscardCount.jsValue()
        object[Strings.burstLossRate] = burstLossRate.jsValue()
        object[Strings.burstDiscardRate] = burstDiscardRate.jsValue()
        object[Strings.gapLossRate] = gapLossRate.jsValue()
        object[Strings.gapDiscardRate] = gapDiscardRate.jsValue()
        object[Strings.framesDropped] = framesDropped.jsValue()
        object[Strings.partialFramesLost] = partialFramesLost.jsValue()
        object[Strings.fullFramesLost] = fullFramesLost.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _packetsReceived = ReadWriteAttribute(jsObject: object, name: Strings.packetsReceived)
        _packetsLost = ReadWriteAttribute(jsObject: object, name: Strings.packetsLost)
        _jitter = ReadWriteAttribute(jsObject: object, name: Strings.jitter)
        _packetsDiscarded = ReadWriteAttribute(jsObject: object, name: Strings.packetsDiscarded)
        _packetsRepaired = ReadWriteAttribute(jsObject: object, name: Strings.packetsRepaired)
        _burstPacketsLost = ReadWriteAttribute(jsObject: object, name: Strings.burstPacketsLost)
        _burstPacketsDiscarded = ReadWriteAttribute(jsObject: object, name: Strings.burstPacketsDiscarded)
        _burstLossCount = ReadWriteAttribute(jsObject: object, name: Strings.burstLossCount)
        _burstDiscardCount = ReadWriteAttribute(jsObject: object, name: Strings.burstDiscardCount)
        _burstLossRate = ReadWriteAttribute(jsObject: object, name: Strings.burstLossRate)
        _burstDiscardRate = ReadWriteAttribute(jsObject: object, name: Strings.burstDiscardRate)
        _gapLossRate = ReadWriteAttribute(jsObject: object, name: Strings.gapLossRate)
        _gapDiscardRate = ReadWriteAttribute(jsObject: object, name: Strings.gapDiscardRate)
        _framesDropped = ReadWriteAttribute(jsObject: object, name: Strings.framesDropped)
        _partialFramesLost = ReadWriteAttribute(jsObject: object, name: Strings.partialFramesLost)
        _fullFramesLost = ReadWriteAttribute(jsObject: object, name: Strings.fullFramesLost)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var packetsReceived: UInt64

    @ReadWriteAttribute
    public var packetsLost: Int64

    @ReadWriteAttribute
    public var jitter: Double

    @ReadWriteAttribute
    public var packetsDiscarded: UInt64

    @ReadWriteAttribute
    public var packetsRepaired: UInt64

    @ReadWriteAttribute
    public var burstPacketsLost: UInt64

    @ReadWriteAttribute
    public var burstPacketsDiscarded: UInt64

    @ReadWriteAttribute
    public var burstLossCount: UInt32

    @ReadWriteAttribute
    public var burstDiscardCount: UInt32

    @ReadWriteAttribute
    public var burstLossRate: Double

    @ReadWriteAttribute
    public var burstDiscardRate: Double

    @ReadWriteAttribute
    public var gapLossRate: Double

    @ReadWriteAttribute
    public var gapDiscardRate: Double

    @ReadWriteAttribute
    public var framesDropped: UInt32

    @ReadWriteAttribute
    public var partialFramesLost: UInt32

    @ReadWriteAttribute
    public var fullFramesLost: UInt32
}