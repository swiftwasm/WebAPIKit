// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DeviceMotionEventAcceleration: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.DeviceMotionEventAcceleration].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _x = ReadonlyAttribute(jsObject: jsObject, name: Strings.x)
        _y = ReadonlyAttribute(jsObject: jsObject, name: Strings.y)
        _z = ReadonlyAttribute(jsObject: jsObject, name: Strings.z)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var x: Double?

    @ReadonlyAttribute
    public var y: Double?

    @ReadonlyAttribute
    public var z: Double?
}
