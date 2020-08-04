
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class FileReaderSync: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.FileReaderSync.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init() {
        self.init(objectRef: FileReaderSync.classRef(.new))
    }

    public func readAsArrayBuffer(blob: Blob) -> ArrayBuffer {
        return objectRef.readAsArrayBuffer!(JSValue(from: blob)).fromJSValue()
    }

    public func readAsBinaryString(blob: Blob) -> String {
        return objectRef.readAsBinaryString!(JSValue(from: blob)).fromJSValue()
    }

    public func readAsText(blob: Blob, encoding: String) -> String {
        return objectRef.readAsText!(JSValue(from: blob), JSValue(from: encoding)).fromJSValue()
    }

    public func readAsText(blob: Blob) -> String {
        return objectRef.readAsText!(JSValue(from: blob)).fromJSValue()
    }

    public func readAsDataURL(blob: Blob) -> String {
        return objectRef.readAsDataURL!(JSValue(from: blob)).fromJSValue()
    }
}
