// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileSystemRemoveOptions: BridgedDictionary {
    public convenience init(recursive: Bool) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.recursive] = recursive.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _recursive = ReadWriteAttribute(jsObject: object, name: Strings.recursive)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var recursive: Bool
}