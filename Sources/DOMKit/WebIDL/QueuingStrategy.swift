// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class QueuingStrategy: BridgedDictionary {
    public convenience init(highWaterMark: Double, size: @escaping QueuingStrategySize) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.highWaterMark] = highWaterMark.jsValue
        ClosureAttribute1[Strings.size, in: object] = size
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _highWaterMark = ReadWriteAttribute(jsObject: object, name: Strings.highWaterMark)
        _size = ClosureAttribute1(jsObject: object, name: Strings.size)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var highWaterMark: Double

    @ClosureAttribute1
    public var size: QueuingStrategySize
}