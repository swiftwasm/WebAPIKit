
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class FileReaderSync: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.FileReaderSync.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(unsafelyWrapping: FileReaderSync.constructor.new())
    }

    public func readAsArrayBuffer(blob: Blob) -> ArrayBuffer {
        return jsObject.readAsArrayBuffer!(blob.jsValue()).fromJSValue()!
    }

    public func readAsBinaryString(blob: Blob) -> String {
        return jsObject.readAsBinaryString!(blob.jsValue()).fromJSValue()!
    }

    public func readAsText(blob: Blob, encoding: String) -> String {
        return jsObject.readAsText!(blob.jsValue(), encoding.jsValue()).fromJSValue()!
    }

    public func readAsText(blob: Blob) -> String {
        return jsObject.readAsText!(blob.jsValue()).fromJSValue()!
    }

    public func readAsDataURL(blob: Blob) -> String {
        return jsObject.readAsDataURL!(blob.jsValue()).fromJSValue()!
    }
}
