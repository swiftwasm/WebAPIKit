// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCDataChannel: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.RTCDataChannel].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _label = ReadonlyAttribute(jsObject: jsObject, name: Strings.label)
        _ordered = ReadonlyAttribute(jsObject: jsObject, name: Strings.ordered)
        _maxPacketLifeTime = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxPacketLifeTime)
        _maxRetransmits = ReadonlyAttribute(jsObject: jsObject, name: Strings.maxRetransmits)
        _protocol = ReadonlyAttribute(jsObject: jsObject, name: Strings.protocol)
        _negotiated = ReadonlyAttribute(jsObject: jsObject, name: Strings.negotiated)
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: Strings.readyState)
        _bufferedAmount = ReadonlyAttribute(jsObject: jsObject, name: Strings.bufferedAmount)
        _bufferedAmountLowThreshold = ReadWriteAttribute(jsObject: jsObject, name: Strings.bufferedAmountLowThreshold)
        _onopen = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onopen)
        _onbufferedamountlow = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onbufferedamountlow)
        _onerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onerror)
        _onclosing = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onclosing)
        _onclose = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onclose)
        _onmessage = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onmessage)
        _binaryType = ReadWriteAttribute(jsObject: jsObject, name: Strings.binaryType)
        _priority = ReadonlyAttribute(jsObject: jsObject, name: Strings.priority)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var label: String

    @ReadonlyAttribute
    public var ordered: Bool

    @ReadonlyAttribute
    public var maxPacketLifeTime: UInt16?

    @ReadonlyAttribute
    public var maxRetransmits: UInt16?

    @ReadonlyAttribute
    public var `protocol`: String

    @ReadonlyAttribute
    public var negotiated: Bool

    @ReadonlyAttribute
    public var id: UInt16?

    @ReadonlyAttribute
    public var readyState: RTCDataChannelState

    @ReadonlyAttribute
    public var bufferedAmount: UInt32

    @ReadWriteAttribute
    public var bufferedAmountLowThreshold: UInt32

    @ClosureAttribute.Optional1
    public var onopen: EventHandler

    @ClosureAttribute.Optional1
    public var onbufferedamountlow: EventHandler

    @ClosureAttribute.Optional1
    public var onerror: EventHandler

    @ClosureAttribute.Optional1
    public var onclosing: EventHandler

    @ClosureAttribute.Optional1
    public var onclose: EventHandler

    public func close() {
        _ = jsObject[Strings.close]!()
    }

    @ClosureAttribute.Optional1
    public var onmessage: EventHandler

    @ReadWriteAttribute
    public var binaryType: BinaryType

    public func send(data: String) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }

    public func send(data: Blob) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }

    public func send(data: ArrayBuffer) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }

    public func send(data: ArrayBufferView) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }

    @ReadonlyAttribute
    public var priority: RTCPriorityType
}
