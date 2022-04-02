// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Gamepad: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Gamepad].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _hand = ReadonlyAttribute(jsObject: jsObject, name: Strings.hand)
        _hapticActuators = ReadonlyAttribute(jsObject: jsObject, name: Strings.hapticActuators)
        _pose = ReadonlyAttribute(jsObject: jsObject, name: Strings.pose)
        _touchEvents = ReadonlyAttribute(jsObject: jsObject, name: Strings.touchEvents)
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _index = ReadonlyAttribute(jsObject: jsObject, name: Strings.index)
        _connected = ReadonlyAttribute(jsObject: jsObject, name: Strings.connected)
        _timestamp = ReadonlyAttribute(jsObject: jsObject, name: Strings.timestamp)
        _mapping = ReadonlyAttribute(jsObject: jsObject, name: Strings.mapping)
        _axes = ReadonlyAttribute(jsObject: jsObject, name: Strings.axes)
        _buttons = ReadonlyAttribute(jsObject: jsObject, name: Strings.buttons)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var hand: GamepadHand

    @ReadonlyAttribute
    public var hapticActuators: [GamepadHapticActuator]

    @ReadonlyAttribute
    public var pose: GamepadPose?

    @ReadonlyAttribute
    public var touchEvents: [GamepadTouch]?

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var index: Int32

    @ReadonlyAttribute
    public var connected: Bool

    @ReadonlyAttribute
    public var timestamp: DOMHighResTimeStamp

    @ReadonlyAttribute
    public var mapping: GamepadMappingType

    @ReadonlyAttribute
    public var axes: [Double]

    @ReadonlyAttribute
    public var buttons: [GamepadButton]
}
