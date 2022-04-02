// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class WebSocket: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.WebSocket].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _url = ReadonlyAttribute(jsObject: jsObject, name: Strings.url)
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: Strings.readyState)
        _bufferedAmount = ReadonlyAttribute(jsObject: jsObject, name: Strings.bufferedAmount)
        _onopen = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onopen)
        _onerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onerror)
        _onclose = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onclose)
        _extensions = ReadonlyAttribute(jsObject: jsObject, name: Strings.extensions)
        _protocol = ReadonlyAttribute(jsObject: jsObject, name: Strings.protocol)
        _onmessage = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onmessage)
        _binaryType = ReadWriteAttribute(jsObject: jsObject, name: Strings.binaryType)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(url: String, protocols: __UNSUPPORTED_UNION__? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(url.jsValue(), protocols?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var url: String

    public static let CONNECTING: UInt16 = 0

    public static let OPEN: UInt16 = 1

    public static let CLOSING: UInt16 = 2

    public static let CLOSED: UInt16 = 3

    @ReadonlyAttribute
    public var readyState: UInt16

    @ReadonlyAttribute
    public var bufferedAmount: UInt64

    @ClosureAttribute.Optional1
    public var onopen: EventHandler

    @ClosureAttribute.Optional1
    public var onerror: EventHandler

    @ClosureAttribute.Optional1
    public var onclose: EventHandler

    @ReadonlyAttribute
    public var extensions: String

    @ReadonlyAttribute
    public var `protocol`: String

    public func close(code: UInt16? = nil, reason: String? = nil) {
        _ = jsObject[Strings.close]!(code?.jsValue() ?? .undefined, reason?.jsValue() ?? .undefined)
    }

    @ClosureAttribute.Optional1
    public var onmessage: EventHandler

    @ReadWriteAttribute
    public var binaryType: BinaryType

    public func send(data: __UNSUPPORTED_UNION__) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }
}
