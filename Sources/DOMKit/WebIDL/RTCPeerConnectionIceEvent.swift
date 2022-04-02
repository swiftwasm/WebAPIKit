// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCPeerConnectionIceEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.RTCPeerConnectionIceEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _candidate = ReadonlyAttribute(jsObject: jsObject, name: Strings.candidate)
        _url = ReadonlyAttribute(jsObject: jsObject, name: Strings.url)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: RTCPeerConnectionIceEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var candidate: RTCIceCandidate?

    @ReadonlyAttribute
    public var url: String?
}
