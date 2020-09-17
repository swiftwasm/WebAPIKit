
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class FileReader: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.FileReader.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: "readyState")
        _result = ReadonlyAttribute(jsObject: jsObject, name: "result")
        _error = ReadonlyAttribute(jsObject: jsObject, name: "error")
        _onloadstart = OptionalClosureHandler(jsObject: jsObject, name: "onloadstart")
        _onprogress = OptionalClosureHandler(jsObject: jsObject, name: "onprogress")
        _onload = OptionalClosureHandler(jsObject: jsObject, name: "onload")
        _onabort = OptionalClosureHandler(jsObject: jsObject, name: "onabort")
        _onerror = OptionalClosureHandler(jsObject: jsObject, name: "onerror")
        _onloadend = OptionalClosureHandler(jsObject: jsObject, name: "onloadend")
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: FileReader.constructor.new())
    }

    public func readAsArrayBuffer(blob: Blob) {
        _ = jsObject.readAsArrayBuffer!(blob.jsValue())
    }

    public func readAsBinaryString(blob: Blob) {
        _ = jsObject.readAsBinaryString!(blob.jsValue())
    }

    public func readAsText(blob: Blob, encoding: String) {
        _ = jsObject.readAsText!(blob.jsValue(), encoding.jsValue())
    }

    public func readAsText(blob: Blob) {
        _ = jsObject.readAsText!(blob.jsValue())
    }

    public func readAsDataURL(blob: Blob) {
        _ = jsObject.readAsDataURL!(blob.jsValue())
    }

    public func abort() {
        _ = jsObject.abort!()
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
