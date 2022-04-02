// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCEncodedVideoFrame: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.RTCEncodedVideoFrame].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _timestamp = ReadonlyAttribute(jsObject: jsObject, name: Strings.timestamp)
        _data = ReadWriteAttribute(jsObject: jsObject, name: Strings.data)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var type: RTCEncodedVideoFrameType

    @ReadonlyAttribute
    public var timestamp: UInt64

    @ReadWriteAttribute
    public var data: ArrayBuffer

    public func getMetadata() -> RTCEncodedVideoFrameMetadata {
        jsObject[Strings.getMetadata]!().fromJSValue()!
    }
}
