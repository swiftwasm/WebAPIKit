// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AbsoluteOrientationSensor: OrientationSensor {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.AbsoluteOrientationSensor].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init(sensorOptions: OrientationSensorOptions? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [sensorOptions?.jsValue ?? .undefined]))
    }
}
