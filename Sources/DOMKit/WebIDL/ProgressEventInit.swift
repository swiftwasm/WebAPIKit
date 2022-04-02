// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ProgressEventInit: BridgedDictionary {
    public convenience init(lengthComputable: Bool, loaded: UInt64, total: UInt64) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.lengthComputable] = lengthComputable.jsValue()
        object[Strings.loaded] = loaded.jsValue()
        object[Strings.total] = total.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _lengthComputable = ReadWriteAttribute(jsObject: object, name: Strings.lengthComputable)
        _loaded = ReadWriteAttribute(jsObject: object, name: Strings.loaded)
        _total = ReadWriteAttribute(jsObject: object, name: Strings.total)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var lengthComputable: Bool

    @ReadWriteAttribute
    public var loaded: UInt64

    @ReadWriteAttribute
    public var total: UInt64
}
