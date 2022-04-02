// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileReader: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.FileReader].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: Strings.readyState)
        _result = ReadonlyAttribute(jsObject: jsObject, name: Strings.result)
        _error = ReadonlyAttribute(jsObject: jsObject, name: Strings.error)
        _onloadstart = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onloadstart)
        _onprogress = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onprogress)
        _onload = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onload)
        _onabort = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onabort)
        _onerror = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onerror)
        _onloadend = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onloadend)
        super.init(unsafelyWrapping: jsObject)
    }

    @inlinable public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }

    @inlinable public func readAsArrayBuffer(blob: Blob) {
        let this = jsObject
        _ = this[Strings.readAsArrayBuffer].function!(this: this, arguments: [blob.jsValue()])
    }

    @inlinable public func readAsBinaryString(blob: Blob) {
        let this = jsObject
        _ = this[Strings.readAsBinaryString].function!(this: this, arguments: [blob.jsValue()])
    }

    @inlinable public func readAsText(blob: Blob, encoding: String? = nil) {
        let this = jsObject
        _ = this[Strings.readAsText].function!(this: this, arguments: [blob.jsValue(), encoding?.jsValue() ?? .undefined])
    }

    @inlinable public func readAsDataURL(blob: Blob) {
        let this = jsObject
        _ = this[Strings.readAsDataURL].function!(this: this, arguments: [blob.jsValue()])
    }

    @inlinable public func abort() {
        let this = jsObject
        _ = this[Strings.abort].function!(this: this, arguments: [])
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

    @ClosureAttribute1Optional
    public var onloadstart: EventHandler

    @ClosureAttribute1Optional
    public var onprogress: EventHandler

    @ClosureAttribute1Optional
    public var onload: EventHandler

    @ClosureAttribute1Optional
    public var onabort: EventHandler

    @ClosureAttribute1Optional
    public var onerror: EventHandler

    @ClosureAttribute1Optional
    public var onloadend: EventHandler
}
