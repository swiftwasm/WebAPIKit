// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileSystemPermissionDescriptor: BridgedDictionary {
    public convenience init(handle: FileSystemHandle, mode: FileSystemPermissionMode) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.handle] = handle.jsValue()
        object[Strings.mode] = mode.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _handle = ReadWriteAttribute(jsObject: object, name: Strings.handle)
        _mode = ReadWriteAttribute(jsObject: object, name: Strings.mode)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var handle: FileSystemHandle

    @ReadWriteAttribute
    public var mode: FileSystemPermissionMode
}