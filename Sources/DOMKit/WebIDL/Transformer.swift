// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Transformer: BridgedDictionary {
    public convenience init(start: @escaping TransformerStartCallback, transform: @escaping TransformerTransformCallback, flush: @escaping TransformerFlushCallback, readableType: JSValue, writableType: JSValue) {
        let object = JSObject.global[Strings.Object].function!.new()
        ClosureAttribute1[Strings.start, in: object] = start
        ClosureAttribute2[Strings.transform, in: object] = transform
        ClosureAttribute1[Strings.flush, in: object] = flush
        object[Strings.readableType] = readableType.jsValue()
        object[Strings.writableType] = writableType.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _start = ClosureAttribute1(jsObject: object, name: Strings.start)
        _transform = ClosureAttribute2(jsObject: object, name: Strings.transform)
        _flush = ClosureAttribute1(jsObject: object, name: Strings.flush)
        _readableType = ReadWriteAttribute(jsObject: object, name: Strings.readableType)
        _writableType = ReadWriteAttribute(jsObject: object, name: Strings.writableType)
        super.init(unsafelyWrapping: object)
    }

    @ClosureAttribute1
    public var start: TransformerStartCallback

    @ClosureAttribute2
    public var transform: TransformerTransformCallback

    @ClosureAttribute1
    public var flush: TransformerFlushCallback

    @ReadWriteAttribute
    public var readableType: JSValue

    @ReadWriteAttribute
    public var writableType: JSValue
}
