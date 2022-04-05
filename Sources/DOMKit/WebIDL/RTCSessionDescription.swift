// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class RTCSessionDescription: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.RTCSessionDescription].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        _sdp = ReadonlyAttribute(jsObject: jsObject, name: Strings.sdp)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(descriptionInitDict: RTCSessionDescriptionInit) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [descriptionInitDict.jsValue]))
    }

    @ReadonlyAttribute
    public var type: RTCSdpType

    @ReadonlyAttribute
    public var sdp: String

    @inlinable public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
