// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileSystemHandlePermissionDescriptor: BridgedDictionary {
    public convenience init(mode: FileSystemPermissionMode) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.mode] = mode.jsValue
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _mode = ReadWriteAttribute(jsObject: object, name: Strings.mode)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var mode: FileSystemPermissionMode
}
