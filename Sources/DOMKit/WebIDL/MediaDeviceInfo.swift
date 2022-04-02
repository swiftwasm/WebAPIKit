// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaDeviceInfo: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.MediaDeviceInfo].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _deviceId = ReadonlyAttribute(jsObject: jsObject, name: Strings.deviceId)
        _kind = ReadonlyAttribute(jsObject: jsObject, name: Strings.kind)
        _label = ReadonlyAttribute(jsObject: jsObject, name: Strings.label)
        _groupId = ReadonlyAttribute(jsObject: jsObject, name: Strings.groupId)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var deviceId: String

    @ReadonlyAttribute
    public var kind: MediaDeviceKind

    @ReadonlyAttribute
    public var label: String

    @ReadonlyAttribute
    public var groupId: String

    public func toJSON() -> JSObject {
        let this = jsObject
        return this[Strings.toJSON].function!(this: this, arguments: []).fromJSValue()!
    }
}
