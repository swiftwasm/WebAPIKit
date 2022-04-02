// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DeviceMotionEvent: Event {
    override public class var constructor: JSFunction { JSObject.global[Strings.DeviceMotionEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _acceleration = ReadonlyAttribute(jsObject: jsObject, name: Strings.acceleration)
        _accelerationIncludingGravity = ReadonlyAttribute(jsObject: jsObject, name: Strings.accelerationIncludingGravity)
        _rotationRate = ReadonlyAttribute(jsObject: jsObject, name: Strings.rotationRate)
        _interval = ReadonlyAttribute(jsObject: jsObject, name: Strings.interval)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: DeviceMotionEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var acceleration: DeviceMotionEventAcceleration?

    @ReadonlyAttribute
    public var accelerationIncludingGravity: DeviceMotionEventAcceleration?

    @ReadonlyAttribute
    public var rotationRate: DeviceMotionEventRotationRate?

    @ReadonlyAttribute
    public var interval: Double

    public static func requestPermission() -> JSPromise {
        let this = constructor
        return this[Strings.requestPermission].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public static func requestPermission() async throws -> PermissionState {
        let this = constructor
        let _promise: JSPromise = this[Strings.requestPermission].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
