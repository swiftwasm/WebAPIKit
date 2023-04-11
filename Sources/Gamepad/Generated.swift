// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import DOM
import ECMAScript
import JavaScriptKit
import WebAPIBase

public class Gamepad: JSBridgedClass {
    @inlinable public class var constructor: JSFunction? { JSObject.global[Strings.Gamepad].function }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _index = ReadonlyAttribute(jsObject: jsObject, name: Strings.index)
        _connected = ReadonlyAttribute(jsObject: jsObject, name: Strings.connected)
        _timestamp = ReadonlyAttribute(jsObject: jsObject, name: Strings.timestamp)
        _mapping = ReadonlyAttribute(jsObject: jsObject, name: Strings.mapping)
        _axes = ReadonlyAttribute(jsObject: jsObject, name: Strings.axes)
        _buttons = ReadonlyAttribute(jsObject: jsObject, name: Strings.buttons)
        _hand = ReadonlyAttribute(jsObject: jsObject, name: Strings.hand)
        _hapticActuators = ReadonlyAttribute(jsObject: jsObject, name: Strings.hapticActuators)
        _pose = ReadonlyAttribute(jsObject: jsObject, name: Strings.pose)
        _touchEvents = ReadonlyAttribute(jsObject: jsObject, name: Strings.touchEvents)
        _vibrationActuator = ReadonlyAttribute(jsObject: jsObject, name: Strings.vibrationActuator)
        self.jsObject = jsObject
    }

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

    @ReadonlyAttribute
    public var hand: GamepadHand

    @ReadonlyAttribute
    public var hapticActuators: [GamepadHapticActuator]

    @ReadonlyAttribute
    public var pose: GamepadPose?

    @ReadonlyAttribute
    public var touchEvents: [GamepadTouch]?

    @ReadonlyAttribute
    public var vibrationActuator: GamepadHapticActuator
}

public class GamepadButton: JSBridgedClass {
    @inlinable public class var constructor: JSFunction? { JSObject.global[Strings.GamepadButton].function }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _pressed = ReadonlyAttribute(jsObject: jsObject, name: Strings.pressed)
        _touched = ReadonlyAttribute(jsObject: jsObject, name: Strings.touched)
        _value = ReadonlyAttribute(jsObject: jsObject, name: Strings.value)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var pressed: Bool

    @ReadonlyAttribute
    public var touched: Bool

    @ReadonlyAttribute
    public var value: Double
}

public class GamepadEffectParameters: BridgedDictionary {
    public convenience init(duration: Double, startDelay: Double, strongMagnitude: Double, weakMagnitude: Double) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.duration] = _toJSValue(duration)
        object[Strings.startDelay] = _toJSValue(startDelay)
        object[Strings.strongMagnitude] = _toJSValue(strongMagnitude)
        object[Strings.weakMagnitude] = _toJSValue(weakMagnitude)
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _duration = ReadWriteAttribute(jsObject: object, name: Strings.duration)
        _startDelay = ReadWriteAttribute(jsObject: object, name: Strings.startDelay)
        _strongMagnitude = ReadWriteAttribute(jsObject: object, name: Strings.strongMagnitude)
        _weakMagnitude = ReadWriteAttribute(jsObject: object, name: Strings.weakMagnitude)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var duration: Double

    @ReadWriteAttribute
    public var startDelay: Double

    @ReadWriteAttribute
    public var strongMagnitude: Double

    @ReadWriteAttribute
    public var weakMagnitude: Double
}

public class GamepadEvent: Event {
    @inlinable override public class var constructor: JSFunction? { JSObject.global[Strings.GamepadEvent].function }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _gamepad = ReadonlyAttribute(jsObject: jsObject, name: Strings.gamepad)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: GamepadEventInit) {
        self.init(unsafelyWrapping: Self.constructor!.new(arguments: [_toJSValue(type), _toJSValue(eventInitDict)]))
    }

    @ReadonlyAttribute
    public var gamepad: Gamepad
}

public class GamepadEventInit: BridgedDictionary {
    public convenience init(gamepad: Gamepad) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.gamepad] = _toJSValue(gamepad)
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _gamepad = ReadWriteAttribute(jsObject: object, name: Strings.gamepad)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var gamepad: Gamepad
}

public enum GamepadHand: JSString, JSValueCompatible {
    case _empty = ""
    case left = "left"
    case right = "right"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public var jsValue: JSValue { rawValue.jsValue }
}

public class GamepadHapticActuator: JSBridgedClass {
    @inlinable public class var constructor: JSFunction? { JSObject.global[Strings.GamepadHapticActuator].function }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var type: GamepadHapticActuatorType

    @inlinable public func canPlayEffectType(type: GamepadHapticEffectType) -> Bool {
        let this = jsObject
        return this[Strings.canPlayEffectType].function!(this: this, arguments: [_toJSValue(type)]).fromJSValue()!
    }

    @inlinable public func playEffect(type: GamepadHapticEffectType, params: GamepadEffectParameters? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.playEffect].function!(this: this, arguments: [_toJSValue(type), _toJSValue(params)]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func playEffect(type: GamepadHapticEffectType, params: GamepadEffectParameters? = nil) async throws -> GamepadHapticsResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.playEffect].function!(this: this, arguments: [_toJSValue(type), _toJSValue(params)]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable public func pulse(value: Double, duration: Double) -> JSPromise {
        let this = jsObject
        return this[Strings.pulse].function!(this: this, arguments: [_toJSValue(value), _toJSValue(duration)]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func pulse(value: Double, duration: Double) async throws -> Bool {
        let this = jsObject
        let _promise: JSPromise = this[Strings.pulse].function!(this: this, arguments: [_toJSValue(value), _toJSValue(duration)]).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }

    @inlinable public func reset() -> JSPromise {
        let this = jsObject
        return this[Strings.reset].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public func reset() async throws -> GamepadHapticsResult {
        let this = jsObject
        let _promise: JSPromise = this[Strings.reset].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }
}

public enum GamepadHapticActuatorType: JSString, JSValueCompatible {
    case vibration = "vibration"
    case dualRumble = "dual-rumble"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public var jsValue: JSValue { rawValue.jsValue }
}

public enum GamepadHapticEffectType: JSString, JSValueCompatible {
    case dualRumble = "dual-rumble"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public var jsValue: JSValue { rawValue.jsValue }
}

public enum GamepadHapticsResult: JSString, JSValueCompatible {
    case complete = "complete"
    case preempted = "preempted"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public var jsValue: JSValue { rawValue.jsValue }
}

public enum GamepadMappingType: JSString, JSValueCompatible {
    case _empty = ""
    case standard = "standard"
    case xrStandard = "xr-standard"

    @inlinable public static func construct(from jsValue: JSValue) -> Self? {
        if let string = jsValue.jsString {
            return Self(rawValue: string)
        }
        return nil
    }

    @inlinable public init?(string: String) {
        self.init(rawValue: JSString(string))
    }

    @inlinable public var jsValue: JSValue { rawValue.jsValue }
}

public class GamepadPose: JSBridgedClass {
    @inlinable public class var constructor: JSFunction? { JSObject.global[Strings.GamepadPose].function }

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

public class GamepadTouch: JSBridgedClass {
    @inlinable public class var constructor: JSFunction? { JSObject.global[Strings.GamepadTouch].function }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _touchId = ReadonlyAttribute(jsObject: jsObject, name: Strings.touchId)
        _surfaceId = ReadonlyAttribute(jsObject: jsObject, name: Strings.surfaceId)
        _position = ReadonlyAttribute(jsObject: jsObject, name: Strings.position)
        _surfaceDimensions = ReadonlyAttribute(jsObject: jsObject, name: Strings.surfaceDimensions)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var touchId: UInt32

    @ReadonlyAttribute
    public var surfaceId: UInt8

    @ReadonlyAttribute
    public var position: Float32Array

    @ReadonlyAttribute
    public var surfaceDimensions: Uint32Array?
}

public class Navigator: JSBridgedClass {
    @inlinable public class var constructor: JSFunction? { JSObject.global[Strings.Navigator].function }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    @inlinable public func getGamepads() -> [Gamepad?] {
        let this = jsObject
        return this[Strings.getGamepads].function!(this: this, arguments: []).fromJSValue()!
    }
}

public extension WindowEventHandlers {
    @inlinable var ongamepadconnected: EventHandler {
        get { ClosureAttribute1Optional[Strings.ongamepadconnected, in: jsObject] }
        nonmutating set { ClosureAttribute1Optional[Strings.ongamepadconnected, in: jsObject] = newValue }
    }

    @inlinable var ongamepaddisconnected: EventHandler {
        get { ClosureAttribute1Optional[Strings.ongamepaddisconnected, in: jsObject] }
        nonmutating set { ClosureAttribute1Optional[Strings.ongamepaddisconnected, in: jsObject] = newValue }
    }
}

@usableFromInline enum Strings {
    @usableFromInline static let _self: JSString = "self"
    @usableFromInline static let Gamepad: JSString = "Gamepad"
    @usableFromInline static let GamepadButton: JSString = "GamepadButton"
    @usableFromInline static let GamepadEvent: JSString = "GamepadEvent"
    @usableFromInline static let GamepadHapticActuator: JSString = "GamepadHapticActuator"
    @usableFromInline static let GamepadPose: JSString = "GamepadPose"
    @usableFromInline static let GamepadTouch: JSString = "GamepadTouch"
    @usableFromInline static let Navigator: JSString = "Navigator"
    @usableFromInline static let Object: JSString = "Object"
    @usableFromInline static let angularAcceleration: JSString = "angularAcceleration"
    @usableFromInline static let angularVelocity: JSString = "angularVelocity"
    @usableFromInline static let axes: JSString = "axes"
    @usableFromInline static let buttons: JSString = "buttons"
    @usableFromInline static let canPlayEffectType: JSString = "canPlayEffectType"
    @usableFromInline static let connected: JSString = "connected"
    @usableFromInline static let duration: JSString = "duration"
    @usableFromInline static let gamepad: JSString = "gamepad"
    @usableFromInline static let getGamepads: JSString = "getGamepads"
    @usableFromInline static let hand: JSString = "hand"
    @usableFromInline static let hapticActuators: JSString = "hapticActuators"
    @usableFromInline static let hasOrientation: JSString = "hasOrientation"
    @usableFromInline static let hasPosition: JSString = "hasPosition"
    @usableFromInline static let id: JSString = "id"
    @usableFromInline static let index: JSString = "index"
    @usableFromInline static let linearAcceleration: JSString = "linearAcceleration"
    @usableFromInline static let linearVelocity: JSString = "linearVelocity"
    @usableFromInline static let mapping: JSString = "mapping"
    @usableFromInline static let ongamepadconnected: JSString = "ongamepadconnected"
    @usableFromInline static let ongamepaddisconnected: JSString = "ongamepaddisconnected"
    @usableFromInline static let orientation: JSString = "orientation"
    @usableFromInline static let playEffect: JSString = "playEffect"
    @usableFromInline static let pose: JSString = "pose"
    @usableFromInline static let position: JSString = "position"
    @usableFromInline static let pressed: JSString = "pressed"
    @usableFromInline static let pulse: JSString = "pulse"
    @usableFromInline static let reset: JSString = "reset"
    @usableFromInline static let startDelay: JSString = "startDelay"
    @usableFromInline static let strongMagnitude: JSString = "strongMagnitude"
    @usableFromInline static let surfaceDimensions: JSString = "surfaceDimensions"
    @usableFromInline static let surfaceId: JSString = "surfaceId"
    @usableFromInline static let timestamp: JSString = "timestamp"
    @usableFromInline static let toString: JSString = "toString"
    @usableFromInline static let touchEvents: JSString = "touchEvents"
    @usableFromInline static let touchId: JSString = "touchId"
    @usableFromInline static let touched: JSString = "touched"
    @usableFromInline static let type: JSString = "type"
    @usableFromInline static let value: JSString = "value"
    @usableFromInline static let vibrationActuator: JSString = "vibrationActuator"
    @usableFromInline static let weakMagnitude: JSString = "weakMagnitude"
}
