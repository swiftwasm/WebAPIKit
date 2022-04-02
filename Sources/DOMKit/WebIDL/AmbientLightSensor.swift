// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AmbientLightSensor: Sensor {
    override public class var constructor: JSFunction { JSObject.global[Strings.AmbientLightSensor].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _illuminance = ReadonlyAttribute(jsObject: jsObject, name: Strings.illuminance)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(sensorOptions: SensorOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(sensorOptions?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var illuminance: Double?
}
