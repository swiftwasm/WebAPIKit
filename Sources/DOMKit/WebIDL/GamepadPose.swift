// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GamepadPose: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.GamepadPose].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _hasOrientation = ReadonlyAttribute(jsObject: jsObject, name: Strings.hasOrientation)
        _hasPosition = ReadonlyAttribute(jsObject: jsObject, name: Strings.hasPosition)
        _position = ReadonlyAttribute(jsObject: jsObject, name: Strings.position)
        _linearVelocity = ReadonlyAttribute(jsObject: jsObject, name: Strings.linearVelocity)
        _linearAcceleration = ReadonlyAttribute(jsObject: jsObject, name: Strings.linearAcceleration)
        _orientation = ReadonlyAttribute(jsObject: jsObject, name: Strings.orientation)
        _angularVelocity = ReadonlyAttribute(jsObject: jsObject, name: Strings.angularVelocity)
        _angularAcceleration = ReadonlyAttribute(jsObject: jsObject, name: Strings.angularAcceleration)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var hasOrientation: Bool

    @ReadonlyAttribute
    public var hasPosition: Bool

    @ReadonlyAttribute
    public var position: Float32Array?

    @ReadonlyAttribute
    public var linearVelocity: Float32Array?

    @ReadonlyAttribute
    public var linearAcceleration: Float32Array?

    @ReadonlyAttribute
    public var orientation: Float32Array?

    @ReadonlyAttribute
    public var angularVelocity: Float32Array?

    @ReadonlyAttribute
    public var angularAcceleration: Float32Array?
}