// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCDataChannelEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.RTCDataChannelEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _channel = ReadonlyAttribute(jsObject: jsObject, name: Strings.channel)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: RTCDataChannelEventInit) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict.jsValue()))
    }

    @ReadonlyAttribute
    public var channel: RTCDataChannel
}