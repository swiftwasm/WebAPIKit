// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class GamepadHapticActuator: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.GamepadHapticActuator].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _type = ReadonlyAttribute(jsObject: jsObject, name: Strings.type)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var type: GamepadHapticActuatorType

    public func pulse(value: Double, duration: Double) -> JSPromise {
        jsObject[Strings.pulse]!(value.jsValue(), duration.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func pulse(value: Double, duration: Double) async throws -> Bool {
        let _promise: JSPromise = jsObject[Strings.pulse]!(value.jsValue(), duration.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
