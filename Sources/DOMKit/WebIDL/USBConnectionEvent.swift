// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class USBConnectionEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.USBConnectionEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _device = ReadonlyAttribute(jsObject: jsObject, name: Strings.device)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: USBConnectionEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue(), eventInitDict.jsValue()]))
    }

    @ReadonlyAttribute
    public var device: USBDevice
}
