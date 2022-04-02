// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileSystemFileEntry: FileSystemEntry {
    override public class var constructor: JSFunction { JSObject.global[Strings.FileSystemFileEntry].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public func file(successCallback: FileCallback, errorCallback: ErrorCallback? = nil) {
        _ = jsObject[Strings.file]!(successCallback.jsValue(), errorCallback?.jsValue() ?? .undefined)
    }
}
