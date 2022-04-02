// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MLPool2dOptions: BridgedDictionary {
    public convenience init(windowDimensions: [Int32], padding: [Int32], strides: [Int32], dilations: [Int32], autoPad: MLAutoPad, layout: MLInputOperandLayout, roundingType: MLRoundingType, outputSizes: [Int32]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.windowDimensions] = windowDimensions.jsValue()
        object[Strings.padding] = padding.jsValue()
        object[Strings.strides] = strides.jsValue()
        object[Strings.dilations] = dilations.jsValue()
        object[Strings.autoPad] = autoPad.jsValue()
        object[Strings.layout] = layout.jsValue()
        object[Strings.roundingType] = roundingType.jsValue()
        object[Strings.outputSizes] = outputSizes.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _windowDimensions = ReadWriteAttribute(jsObject: object, name: Strings.windowDimensions)
        _padding = ReadWriteAttribute(jsObject: object, name: Strings.padding)
        _strides = ReadWriteAttribute(jsObject: object, name: Strings.strides)
        _dilations = ReadWriteAttribute(jsObject: object, name: Strings.dilations)
        _autoPad = ReadWriteAttribute(jsObject: object, name: Strings.autoPad)
        _layout = ReadWriteAttribute(jsObject: object, name: Strings.layout)
        _roundingType = ReadWriteAttribute(jsObject: object, name: Strings.roundingType)
        _outputSizes = ReadWriteAttribute(jsObject: object, name: Strings.outputSizes)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var windowDimensions: [Int32]

    @ReadWriteAttribute
    public var padding: [Int32]

    @ReadWriteAttribute
    public var strides: [Int32]

    @ReadWriteAttribute
    public var dilations: [Int32]

    @ReadWriteAttribute
    public var autoPad: MLAutoPad

    @ReadWriteAttribute
    public var layout: MLInputOperandLayout

    @ReadWriteAttribute
    public var roundingType: MLRoundingType

    @ReadWriteAttribute
    public var outputSizes: [Int32]
}