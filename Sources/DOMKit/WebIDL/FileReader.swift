
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class FileReader: EventTarget {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.FileReader.function! }

    public required init(objectRef: JSObjectRef) {
        _readyState = ReadonlyAttribute(objectRef: objectRef, name: "readyState")
        _result = ReadonlyAttribute(objectRef: objectRef, name: "result")
        _error = ReadonlyAttribute(objectRef: objectRef, name: "error")
        _onloadstart = OptionalClosureHandler(objectRef: objectRef, name: "onloadstart")
        _onprogress = OptionalClosureHandler(objectRef: objectRef, name: "onprogress")
        _onload = OptionalClosureHandler(objectRef: objectRef, name: "onload")
        _onabort = OptionalClosureHandler(objectRef: objectRef, name: "onabort")
        _onerror = OptionalClosureHandler(objectRef: objectRef, name: "onerror")
        _onloadend = OptionalClosureHandler(objectRef: objectRef, name: "onloadend")
        super.init(objectRef: objectRef)
    }

    public convenience init() {
        self.init(objectRef: FileReader.classRef.new())
    }

    public func readAsArrayBuffer(blob: Blob) {
        _ = objectRef.readAsArrayBuffer!(blob.jsValue())
    }

    public func readAsBinaryString(blob: Blob) {
        _ = objectRef.readAsBinaryString!(blob.jsValue())
    }

    public func readAsText(blob: Blob, encoding: String) {
        _ = objectRef.readAsText!(blob.jsValue(), encoding.jsValue())
    }

    public func readAsText(blob: Blob) {
        _ = objectRef.readAsText!(blob.jsValue())
    }

    public func readAsDataURL(blob: Blob) {
        _ = objectRef.readAsDataURL!(blob.jsValue())
    }

    public func abort() {
        _ = objectRef.abort!()
    }

    public let EMPTY: UInt16 = 0

    public let LOADING: UInt16 = 1

    public let DONE: UInt16 = 2

    @ReadonlyAttribute
    public var readyState: UInt16

    @ReadonlyAttribute
    public var result: StringOrArrayBuffer?

    @ReadonlyAttribute
    public var error: DOMException?

    @OptionalClosureHandler
    public var onloadstart: EventHandler

    @OptionalClosureHandler
    public var onprogress: EventHandler

    @OptionalClosureHandler
    public var onload: EventHandler

    @OptionalClosureHandler
    public var onabort: EventHandler

    @OptionalClosureHandler
    public var onerror: EventHandler

    @OptionalClosureHandler
    public var onloadend: EventHandler
}
