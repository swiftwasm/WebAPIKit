// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCDataChannelStats: BridgedDictionary {
    public convenience init(label: String, protocol: String, dataChannelIdentifier: UInt16, state: RTCDataChannelState, messagesSent: UInt32, bytesSent: UInt64, messagesReceived: UInt32, bytesReceived: UInt64) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.label] = label.jsValue()
        object[Strings.protocol] = `protocol`.jsValue()
        object[Strings.dataChannelIdentifier] = dataChannelIdentifier.jsValue()
        object[Strings.state] = state.jsValue()
        object[Strings.messagesSent] = messagesSent.jsValue()
        object[Strings.bytesSent] = bytesSent.jsValue()
        object[Strings.messagesReceived] = messagesReceived.jsValue()
        object[Strings.bytesReceived] = bytesReceived.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _label = ReadWriteAttribute(jsObject: object, name: Strings.label)
        _protocol = ReadWriteAttribute(jsObject: object, name: Strings.protocol)
        _dataChannelIdentifier = ReadWriteAttribute(jsObject: object, name: Strings.dataChannelIdentifier)
        _state = ReadWriteAttribute(jsObject: object, name: Strings.state)
        _messagesSent = ReadWriteAttribute(jsObject: object, name: Strings.messagesSent)
        _bytesSent = ReadWriteAttribute(jsObject: object, name: Strings.bytesSent)
        _messagesReceived = ReadWriteAttribute(jsObject: object, name: Strings.messagesReceived)
        _bytesReceived = ReadWriteAttribute(jsObject: object, name: Strings.bytesReceived)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var label: String

    @ReadWriteAttribute
    public var `protocol`: String

    @ReadWriteAttribute
    public var dataChannelIdentifier: UInt16

    @ReadWriteAttribute
    public var state: RTCDataChannelState

    @ReadWriteAttribute
    public var messagesSent: UInt32

    @ReadWriteAttribute
    public var bytesSent: UInt64

    @ReadWriteAttribute
    public var messagesReceived: UInt32

    @ReadWriteAttribute
    public var bytesReceived: UInt64
}
