// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Transformer: JSObject {
    public init(start: @escaping TransformerStartCallback, transform: @escaping TransformerTransformCallback, flush: @escaping TransformerFlushCallback, readableType: JSValue, writableType: JSValue) {
        let object = JSObject.global.Object.function!.new()
        ClosureAttribute.Required1["start", in: object] = start
        ClosureAttribute.Required2["transform", in: object] = transform
        ClosureAttribute.Required1["flush", in: object] = flush
        object["readableType"] = readableType.jsValue()
        object["writableType"] = writableType.jsValue()
        _start = ClosureAttribute.Required1(jsObject: object, name: "start")
        _transform = ClosureAttribute.Required2(jsObject: object, name: "transform")
        _flush = ClosureAttribute.Required1(jsObject: object, name: "flush")
        _readableType = ReadWriteAttribute(jsObject: object, name: "readableType")
        _writableType = ReadWriteAttribute(jsObject: object, name: "writableType")
        super.init(cloning: object)
    }

    @ClosureAttribute.Required1
    public var start: TransformerStartCallback

    @ClosureAttribute.Required2
    public var transform: TransformerTransformCallback

    @ClosureAttribute.Required1
    public var flush: TransformerFlushCallback

    @ReadWriteAttribute
    public var readableType: JSValue

    @ReadWriteAttribute
    public var writableType: JSValue
}
