// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class UnderlyingSink: BridgedDictionary {
    private enum Keys {
        static let type: JSString = "type"
        static let abort: JSString = "abort"
        static let start: JSString = "start"
        static let write: JSString = "write"
        static let close: JSString = "close"
    }

    public convenience init(start: @escaping UnderlyingSinkStartCallback, write: @escaping UnderlyingSinkWriteCallback, close: @escaping UnderlyingSinkCloseCallback, abort: @escaping UnderlyingSinkAbortCallback, type: JSValue) {
        let object = JSObject.global.Object.function!.new()
        ClosureAttribute.Required1[Keys.start, in: object] = start
        ClosureAttribute.Required2[Keys.write, in: object] = write
        ClosureAttribute.Required0[Keys.close, in: object] = close
        ClosureAttribute.Required1[Keys.abort, in: object] = abort
        object[Keys.type] = type.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _start = ClosureAttribute.Required1(jsObject: object, name: Keys.start)
        _write = ClosureAttribute.Required2(jsObject: object, name: Keys.write)
        _close = ClosureAttribute.Required0(jsObject: object, name: Keys.close)
        _abort = ClosureAttribute.Required1(jsObject: object, name: Keys.abort)
        _type = ReadWriteAttribute(jsObject: object, name: Keys.type)
        super.init(unsafelyWrapping: object)
    }

    @ClosureAttribute.Required1
    public var start: UnderlyingSinkStartCallback

    @ClosureAttribute.Required2
    public var write: UnderlyingSinkWriteCallback

    @ClosureAttribute.Required0
    public var close: UnderlyingSinkCloseCallback

    @ClosureAttribute.Required1
    public var abort: UnderlyingSinkAbortCallback

    @ReadWriteAttribute
    public var type: JSValue
}
