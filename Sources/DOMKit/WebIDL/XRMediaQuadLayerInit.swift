// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRMediaQuadLayerInit: BridgedDictionary {
    public convenience init(transform: XRRigidTransform?, width: Float?, height: Float?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.transform] = transform.jsValue()
        object[Strings.width] = width.jsValue()
        object[Strings.height] = height.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _transform = ReadWriteAttribute(jsObject: object, name: Strings.transform)
        _width = ReadWriteAttribute(jsObject: object, name: Strings.width)
        _height = ReadWriteAttribute(jsObject: object, name: Strings.height)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var transform: XRRigidTransform?

    @ReadWriteAttribute
    public var width: Float?

    @ReadWriteAttribute
    public var height: Float?
}