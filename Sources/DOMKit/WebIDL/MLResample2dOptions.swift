// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MLResample2dOptions: BridgedDictionary {
    public convenience init(mode: MLInterpolationMode, scales: [Float], sizes: [Int32], axes: [Int32]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.mode] = mode.jsValue()
        object[Strings.scales] = scales.jsValue()
        object[Strings.sizes] = sizes.jsValue()
        object[Strings.axes] = axes.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _mode = ReadWriteAttribute(jsObject: object, name: Strings.mode)
        _scales = ReadWriteAttribute(jsObject: object, name: Strings.scales)
        _sizes = ReadWriteAttribute(jsObject: object, name: Strings.sizes)
        _axes = ReadWriteAttribute(jsObject: object, name: Strings.axes)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var mode: MLInterpolationMode

    @ReadWriteAttribute
    public var scales: [Float]

    @ReadWriteAttribute
    public var sizes: [Int32]

    @ReadWriteAttribute
    public var axes: [Int32]
}