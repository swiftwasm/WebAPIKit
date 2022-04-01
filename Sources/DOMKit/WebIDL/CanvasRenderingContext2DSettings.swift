// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CanvasRenderingContext2DSettings: BridgedDictionary {
    private enum Keys {
        static let alpha: JSString = "alpha"
        static let colorSpace: JSString = "colorSpace"
        static let desynchronized: JSString = "desynchronized"
        static let willReadFrequently: JSString = "willReadFrequently"
    }

    public convenience init(alpha: Bool, desynchronized: Bool, colorSpace: PredefinedColorSpace, willReadFrequently: Bool) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.alpha] = alpha.jsValue()
        object[Keys.desynchronized] = desynchronized.jsValue()
        object[Keys.colorSpace] = colorSpace.jsValue()
        object[Keys.willReadFrequently] = willReadFrequently.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _alpha = ReadWriteAttribute(jsObject: object, name: Keys.alpha)
        _desynchronized = ReadWriteAttribute(jsObject: object, name: Keys.desynchronized)
        _colorSpace = ReadWriteAttribute(jsObject: object, name: Keys.colorSpace)
        _willReadFrequently = ReadWriteAttribute(jsObject: object, name: Keys.willReadFrequently)
        super.init(unsafelyWrapping: object)
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
