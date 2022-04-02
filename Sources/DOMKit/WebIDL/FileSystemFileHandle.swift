// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileSystemFileHandle: FileSystemHandle {
    override public class var constructor: JSFunction { JSObject.global[Strings.FileSystemFileHandle].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public func getFile() -> JSPromise {
        jsObject[Strings.getFile]!().fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getFile() async throws -> File {
        let _promise: JSPromise = jsObject[Strings.getFile]!().fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func createWritable(options: FileSystemCreateWritableOptions? = nil) -> JSPromise {
        jsObject[Strings.createWritable]!(options?.jsValue() ?? .undefined).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func createWritable(options: FileSystemCreateWritableOptions? = nil) async throws -> FileSystemWritableFileStream {
        let _promise: JSPromise = jsObject[Strings.createWritable]!(options?.jsValue() ?? .undefined).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
