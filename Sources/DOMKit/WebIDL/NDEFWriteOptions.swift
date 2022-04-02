// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NDEFWriteOptions: BridgedDictionary {
    public convenience init(overwrite: Bool, signal: AbortSignal?) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.overwrite] = overwrite.jsValue()
        object[Strings.signal] = signal.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _overwrite = ReadWriteAttribute(jsObject: object, name: Strings.overwrite)
        _signal = ReadWriteAttribute(jsObject: object, name: Strings.signal)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var overwrite: Bool

    @ReadWriteAttribute
    public var signal: AbortSignal?
}
