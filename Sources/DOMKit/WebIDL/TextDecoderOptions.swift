// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class TextDecoderOptions: BridgedDictionary {
    public convenience init(fatal: Bool, ignoreBOM: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.fatal] = fatal.jsValue
        object[Strings.ignoreBOM] = ignoreBOM.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _fatal = ReadWriteAttribute(jsObject: object, name: Strings.fatal)
        _ignoreBOM = ReadWriteAttribute(jsObject: object, name: Strings.ignoreBOM)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var fatal: Bool

    @ReadWriteAttribute
    public var ignoreBOM: Bool
}
