// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DeviceOrientationEvent: Event {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.DeviceOrientationEvent].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _alpha = ReadonlyAttribute(jsObject: jsObject, name: Strings.alpha)
        _beta = ReadonlyAttribute(jsObject: jsObject, name: Strings.beta)
        _gamma = ReadonlyAttribute(jsObject: jsObject, name: Strings.gamma)
        _absolute = ReadonlyAttribute(jsObject: jsObject, name: Strings.absolute)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(type: String, eventInitDict: DeviceOrientationEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [type.jsValue, eventInitDict?.jsValue ?? .undefined]))
    }

    @ReadonlyAttribute
    public var alpha: Double?

    @ReadonlyAttribute
    public var beta: Double?

    @ReadonlyAttribute
    public var gamma: Double?

    @ReadonlyAttribute
    public var absolute: Bool

    @inlinable public static func requestPermission() -> JSPromise {
        let this = constructor
        return this[Strings.requestPermission].function!(this: this, arguments: []).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    @inlinable public static func requestPermission() async throws -> PermissionState {
        let this = constructor
        let _promise: JSPromise = this[Strings.requestPermission].function!(this: this, arguments: []).fromJSValue()!
        return try await _promise.value.fromJSValue()!
    }
}
