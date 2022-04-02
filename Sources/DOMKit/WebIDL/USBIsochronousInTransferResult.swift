// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USBIsochronousInTransferResult: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.USBIsochronousInTransferResult].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadonlyAttribute(jsObject: jsObject, name: Strings.data)
        _packets = ReadonlyAttribute(jsObject: jsObject, name: Strings.packets)
        self.jsObject = jsObject
    }

    public convenience init(packets: [USBIsochronousInTransferPacket], data: DataView? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [packets.jsValue(), data?.jsValue() ?? .undefined]))
    }

    @ReadonlyAttribute
    public var data: DataView?

    @ReadonlyAttribute
    public var packets: [USBIsochronousInTransferPacket]
}
