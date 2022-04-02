// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileSystemDirectoryHandle: FileSystemHandle, AsyncSequence {
    override public class var constructor: JSFunction { JSObject.global[Strings.FileSystemDirectoryHandle].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        super.init(unsafelyWrapping: jsObject)
    }

    public typealias Element = String
    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func makeAsyncIterator() -> ValueIterableAsyncIterator<FileSystemDirectoryHandle> {
        ValueIterableAsyncIterator(sequence: self)
    }

    public func getFileHandle(name: String, options: FileSystemGetFileOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.getFileHandle].function!(this: this, arguments: [name.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getFileHandle(name: String, options: FileSystemGetFileOptions? = nil) async throws -> FileSystemFileHandle {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getFileHandle].function!(this: this, arguments: [name.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func getDirectoryHandle(name: String, options: FileSystemGetDirectoryOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.getDirectoryHandle].function!(this: this, arguments: [name.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func getDirectoryHandle(name: String, options: FileSystemGetDirectoryOptions? = nil) async throws -> FileSystemDirectoryHandle {
        let this = jsObject
        let _promise: JSPromise = this[Strings.getDirectoryHandle].function!(this: this, arguments: [name.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    public func removeEntry(name: String, options: FileSystemRemoveOptions? = nil) -> JSPromise {
        let this = jsObject
        return this[Strings.removeEntry].function!(this: this, arguments: [name.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func removeEntry(name: String, options: FileSystemRemoveOptions? = nil) async throws {
        let this = jsObject
        let _promise: JSPromise = this[Strings.removeEntry].function!(this: this, arguments: [name.jsValue(), options?.jsValue() ?? .undefined]).fromJSValue()!
        _ = try await _promise.get()
    }

    public func resolve(possibleDescendant: FileSystemHandle) -> JSPromise {
        let this = jsObject
        return this[Strings.resolve].function!(this: this, arguments: [possibleDescendant.jsValue()]).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func resolve(possibleDescendant: FileSystemHandle) async throws -> [String]? {
        let this = jsObject
        let _promise: JSPromise = this[Strings.resolve].function!(this: this, arguments: [possibleDescendant.jsValue()]).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }
}
