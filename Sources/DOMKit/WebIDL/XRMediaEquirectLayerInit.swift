// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRMediaEquirectLayerInit: BridgedDictionary {
    public convenience init(transform: XRRigidTransform?, radius: Float, centralHorizontalAngle: Float, upperVerticalAngle: Float, lowerVerticalAngle: Float) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.transform] = transform.jsValue()
        object[Strings.radius] = radius.jsValue()
        object[Strings.centralHorizontalAngle] = centralHorizontalAngle.jsValue()
        object[Strings.upperVerticalAngle] = upperVerticalAngle.jsValue()
        object[Strings.lowerVerticalAngle] = lowerVerticalAngle.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _transform = ReadWriteAttribute(jsObject: object, name: Strings.transform)
        _radius = ReadWriteAttribute(jsObject: object, name: Strings.radius)
        _centralHorizontalAngle = ReadWriteAttribute(jsObject: object, name: Strings.centralHorizontalAngle)
        _upperVerticalAngle = ReadWriteAttribute(jsObject: object, name: Strings.upperVerticalAngle)
        _lowerVerticalAngle = ReadWriteAttribute(jsObject: object, name: Strings.lowerVerticalAngle)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var transform: XRRigidTransform?

    @ReadWriteAttribute
    public var radius: Float

    @ReadWriteAttribute
    public var centralHorizontalAngle: Float

    @ReadWriteAttribute
    public var upperVerticalAngle: Float

    @ReadWriteAttribute
    public var lowerVerticalAngle: Float
}
