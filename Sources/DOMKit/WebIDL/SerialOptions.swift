// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class SerialOptions: BridgedDictionary {
    public convenience init(baudRate: UInt32, dataBits: UInt8, stopBits: UInt8, parity: ParityType, bufferSize: UInt32, flowControl: FlowControlType) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.baudRate] = baudRate.jsValue
        object[Strings.dataBits] = dataBits.jsValue
        object[Strings.stopBits] = stopBits.jsValue
        object[Strings.parity] = parity.jsValue
        object[Strings.bufferSize] = bufferSize.jsValue
        object[Strings.flowControl] = flowControl.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _baudRate = ReadWriteAttribute(jsObject: object, name: Strings.baudRate)
        _dataBits = ReadWriteAttribute(jsObject: object, name: Strings.dataBits)
        _stopBits = ReadWriteAttribute(jsObject: object, name: Strings.stopBits)
        _parity = ReadWriteAttribute(jsObject: object, name: Strings.parity)
        _bufferSize = ReadWriteAttribute(jsObject: object, name: Strings.bufferSize)
        _flowControl = ReadWriteAttribute(jsObject: object, name: Strings.flowControl)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var baudRate: UInt32

    @ReadWriteAttribute
    public var dataBits: UInt8

    @ReadWriteAttribute
    public var stopBits: UInt8

    @ReadWriteAttribute
    public var parity: ParityType

    @ReadWriteAttribute
    public var bufferSize: UInt32

    @ReadWriteAttribute
    public var flowControl: FlowControlType
}
