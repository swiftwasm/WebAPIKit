// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class VideoColorSpaceInit: BridgedDictionary {
    public convenience init(primaries: VideoColorPrimaries, transfer: VideoTransferCharacteristics, matrix: VideoMatrixCoefficients, fullRange: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.primaries] = primaries.jsValue()
        object[Strings.transfer] = transfer.jsValue()
        object[Strings.matrix] = matrix.jsValue()
        object[Strings.fullRange] = fullRange.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _primaries = ReadWriteAttribute(jsObject: object, name: Strings.primaries)
        _transfer = ReadWriteAttribute(jsObject: object, name: Strings.transfer)
        _matrix = ReadWriteAttribute(jsObject: object, name: Strings.matrix)
        _fullRange = ReadWriteAttribute(jsObject: object, name: Strings.fullRange)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var primaries: VideoColorPrimaries

    @ReadWriteAttribute
    public var transfer: VideoTransferCharacteristics

    @ReadWriteAttribute
    public var matrix: VideoMatrixCoefficients

    @ReadWriteAttribute
    public var fullRange: Bool
}