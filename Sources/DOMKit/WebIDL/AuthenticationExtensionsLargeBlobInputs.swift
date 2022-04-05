// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class AuthenticationExtensionsLargeBlobInputs: BridgedDictionary {
    public convenience init(support: String, read: Bool, write: BufferSource) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.support] = support.jsValue
        object[Strings.read] = read.jsValue
        object[Strings.write] = write.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _support = ReadWriteAttribute(jsObject: object, name: Strings.support)
        _read = ReadWriteAttribute(jsObject: object, name: Strings.read)
        _write = ReadWriteAttribute(jsObject: object, name: Strings.write)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var support: String

    @ReadWriteAttribute
    public var read: Bool

    @ReadWriteAttribute
    public var write: BufferSource
}
