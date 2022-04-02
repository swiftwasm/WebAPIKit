// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class OrientationSensor: Sensor {
    override public class var constructor: JSFunction { JSObject.global[Strings.OrientationSensor].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _quaternion = ReadonlyAttribute(jsObject: jsObject, name: Strings.quaternion)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var quaternion: [Double]?

    public func populateMatrix(targetMatrix: RotationMatrixType) {
        _ = jsObject[Strings.populateMatrix]!(targetMatrix.jsValue())
    }
}