// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRCylinderLayer: XRCompositionLayer {
    override public class var constructor: JSFunction { JSObject.global[Strings.XRCylinderLayer].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _space = ReadWriteAttribute(jsObject: jsObject, name: Strings.space)
        _transform = ReadWriteAttribute(jsObject: jsObject, name: Strings.transform)
        _radius = ReadWriteAttribute(jsObject: jsObject, name: Strings.radius)
        _centralAngle = ReadWriteAttribute(jsObject: jsObject, name: Strings.centralAngle)
        _aspectRatio = ReadWriteAttribute(jsObject: jsObject, name: Strings.aspectRatio)
        _onredraw = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onredraw)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var space: XRSpace

    @ReadWriteAttribute
    public var transform: XRRigidTransform

    @ReadWriteAttribute
    public var radius: Float

    @ReadWriteAttribute
    public var centralAngle: Float

    @ReadWriteAttribute
    public var aspectRatio: Float

    @ClosureAttribute.Optional1
    public var onredraw: EventHandler
}
