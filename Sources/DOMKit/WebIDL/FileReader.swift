// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileReader: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.FileReader.function! }

    private enum Keys {
        static let DONE: JSString = "DONE"
        static let EMPTY: JSString = "EMPTY"
        static let LOADING: JSString = "LOADING"
        static let abort: JSString = "abort"
        static let error: JSString = "error"
        static let onabort: JSString = "onabort"
        static let onerror: JSString = "onerror"
        static let onload: JSString = "onload"
        static let onloadend: JSString = "onloadend"
        static let onloadstart: JSString = "onloadstart"
        static let onprogress: JSString = "onprogress"
        static let readAsArrayBuffer: JSString = "readAsArrayBuffer"
        static let readAsBinaryString: JSString = "readAsBinaryString"
        static let readAsDataURL: JSString = "readAsDataURL"
        static let readAsText: JSString = "readAsText"
        static let readyState: JSString = "readyState"
        static let result: JSString = "result"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: Keys.readyState)
        _result = ReadonlyAttribute(jsObject: jsObject, name: Keys.result)
        _error = ReadonlyAttribute(jsObject: jsObject, name: Keys.error)
        _onloadstart = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onloadstart)
        _onprogress = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onprogress)
        _onload = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onload)
        _onabort = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onabort)
        _onerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onerror)
        _onloadend = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onloadend)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new())
    }

    public func readAsArrayBuffer(blob: Blob) {
        jsObject[Keys.readAsArrayBuffer]!(blob.jsValue()).fromJSValue()!
    }

    public func readAsBinaryString(blob: Blob) {
        jsObject[Keys.readAsBinaryString]!(blob.jsValue()).fromJSValue()!
    }

    public func readAsText(blob: Blob, encoding: String? = nil) {
        jsObject[Keys.readAsText]!(blob.jsValue(), encoding?.jsValue() ?? .undefined).fromJSValue()!
    }

    public func readAsDataURL(blob: Blob) {
        jsObject[Keys.readAsDataURL]!(blob.jsValue()).fromJSValue()!
    }

    public func abort() {
        jsObject[Keys.abort]!().fromJSValue()!
    }

    public static let EMPTY: UInt16 = 0

    public static let LOADING: UInt16 = 1

    public static let DONE: UInt16 = 2

    @ReadonlyAttribute
    public var readyState: UInt16

    @ReadonlyAttribute
    public var result: __UNSUPPORTED_UNION__?

    @ReadonlyAttribute
    public var error: DOMException?

    @ClosureAttribute.Optional1
    public var onloadstart: EventHandler

    @ClosureAttribute.Optional1
    public var onprogress: EventHandler

    @ClosureAttribute.Optional1
    public var onload: EventHandler

    @ClosureAttribute.Optional1
    public var onabort: EventHandler

    @ClosureAttribute.Optional1
    public var onerror: EventHandler

    @ClosureAttribute.Optional1
    public var onloadend: EventHandler
}
