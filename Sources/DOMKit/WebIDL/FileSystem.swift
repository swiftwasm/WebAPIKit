// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileSystem: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.FileSystem].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Strings.name)
        _root = ReadonlyAttribute(jsObject: jsObject, name: Strings.root)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var root: FileSystemDirectoryEntry
}
