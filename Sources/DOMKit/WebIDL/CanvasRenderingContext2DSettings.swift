// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CanvasRenderingContext2DSettings: JSObject {
    public init(alpha: Bool, desynchronized: Bool, colorSpace: PredefinedColorSpace, willReadFrequently: Bool) {
        let object = JSObject.global.Object.function!.new()
        object["alpha"] = alpha.jsValue()
        object["desynchronized"] = desynchronized.jsValue()
        object["colorSpace"] = colorSpace.jsValue()
        object["willReadFrequently"] = willReadFrequently.jsValue()
        _alpha = ReadWriteAttribute(jsObject: object, name: "alpha")
        _desynchronized = ReadWriteAttribute(jsObject: object, name: "desynchronized")
        _colorSpace = ReadWriteAttribute(jsObject: object, name: "colorSpace")
        _willReadFrequently = ReadWriteAttribute(jsObject: object, name: "willReadFrequently")
        super.init(cloning: object)
    }

    @ReadWriteAttribute
    public var alpha: Bool

    @ReadWriteAttribute
    public var desynchronized: Bool

    @ReadWriteAttribute
    public var colorSpace: PredefinedColorSpace

    @ReadWriteAttribute
    public var willReadFrequently: Bool
}
