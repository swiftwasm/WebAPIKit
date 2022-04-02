// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileReaderSync: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.FileReaderSync].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    public func readAsArrayBuffer(blob: Blob) -> ArrayBuffer {
        jsObject[Strings.readAsArrayBuffer]!(blob.jsValue()).fromJSValue()!
    }

    public func readAsBinaryString(blob: Blob) -> String {
        jsObject[Strings.readAsBinaryString]!(blob.jsValue()).fromJSValue()!
    }

    public func readAsText(blob: Blob, encoding: String? = nil) -> String {
        jsObject[Strings.readAsText]!(blob.jsValue(), encoding?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func readAsDataURL(blob: Blob) -> String {
        jsObject[Strings.readAsDataURL]!(blob.jsValue()).fromJSValue()!
    }
}
