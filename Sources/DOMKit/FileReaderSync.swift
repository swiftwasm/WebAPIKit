
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class FileReaderSync: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.FileReaderSync.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init() {
        self.init(objectRef: FileReaderSync.classRef.new())
    }

    public func readAsArrayBuffer(blob: Blob) -> ArrayBuffer {
        return objectRef.readAsArrayBuffer!(blob.jsValue()).fromJSValue()
    }

    public func readAsBinaryString(blob: Blob) -> String {
        return objectRef.readAsBinaryString!(blob.jsValue()).fromJSValue()
    }

    public func readAsText(blob: Blob, encoding: String) -> String {
        return objectRef.readAsText!(blob.jsValue(), encoding.jsValue()).fromJSValue()
    }

    public func readAsText(blob: Blob) -> String {
        return objectRef.readAsText!(blob.jsValue()).fromJSValue()
    }

    public func readAsDataURL(blob: Blob) -> String {
        return objectRef.readAsDataURL!(blob.jsValue()).fromJSValue()
    }
}
