// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class EventSource: EventTarget {
    override public class var constructor: JSFunction { JSObject.global.EventSource.function! }

    private enum Keys {
        static let CLOSED: JSString = "CLOSED"
        static let CONNECTING: JSString = "CONNECTING"
        static let OPEN: JSString = "OPEN"
        static let close: JSString = "close"
        static let onerror: JSString = "onerror"
        static let onmessage: JSString = "onmessage"
        static let onopen: JSString = "onopen"
        static let readyState: JSString = "readyState"
        static let url: JSString = "url"
        static let withCredentials: JSString = "withCredentials"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _url = ReadonlyAttribute(jsObject: jsObject, name: Keys.url)
        _withCredentials = ReadonlyAttribute(jsObject: jsObject, name: Keys.withCredentials)
        _readyState = ReadonlyAttribute(jsObject: jsObject, name: Keys.readyState)
        _onopen = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onopen)
        _onmessage = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onmessage)
        _onerror = ClosureAttribute.Optional1(jsObject: jsObject, name: Keys.onerror)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(url: String, eventSourceInitDict: EventSourceInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(url.jsValue(), eventSourceInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var url: String

    @ReadonlyAttribute
    public var withCredentials: Bool

    public static let CONNECTING: UInt16 = 0

    public static let OPEN: UInt16 = 1

    public static let CLOSED: UInt16 = 2

    @ReadonlyAttribute
    public var readyState: UInt16

    @ClosureAttribute.Optional1
    public var onopen: EventHandler

    @ClosureAttribute.Optional1
    public var onmessage: EventHandler

    @ClosureAttribute.Optional1
    public var onerror: EventHandler

    public func close() {
        _ = jsObject[Keys.close]!()
    }
}
