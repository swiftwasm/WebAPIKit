// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MessageEvent: Event {
    override public class var constructor: JSFunction { JSObject.global.MessageEvent.function! }

    private enum Keys {
        static let data: JSString = "data"
        static let initMessageEvent: JSString = "initMessageEvent"
        static let lastEventId: JSString = "lastEventId"
        static let origin: JSString = "origin"
        static let ports: JSString = "ports"
        static let source: JSString = "source"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadonlyAttribute(jsObject: jsObject, name: Keys.data)
        _origin = ReadonlyAttribute(jsObject: jsObject, name: Keys.origin)
        _lastEventId = ReadonlyAttribute(jsObject: jsObject, name: Keys.lastEventId)
        _source = ReadonlyAttribute(jsObject: jsObject, name: Keys.source)
        _ports = ReadonlyAttribute(jsObject: jsObject, name: Keys.ports)
        super.init(unsafelyWrapping: jsObject)
    }

    public convenience init(type: String, eventInitDict: MessageEventInit? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(type.jsValue(), eventInitDict?.jsValue() ?? .undefined))
    }

    @ReadonlyAttribute
    public var data: JSValue

    @ReadonlyAttribute
    public var origin: String

    @ReadonlyAttribute
    public var lastEventId: String

    @ReadonlyAttribute
    public var source: MessageEventSource?

    @ReadonlyAttribute
    public var ports: [MessagePort]

    public func initMessageEvent(type: String, bubbles: Bool? = nil, cancelable: Bool? = nil, data: JSValue? = nil, origin: String? = nil, lastEventId: String? = nil, source: MessageEventSource? = nil, ports: [MessagePort]? = nil) {
        let _arg0 = type.jsValue()
        let _arg1 = bubbles?.jsValue() ?? .undefined
        let _arg2 = cancelable?.jsValue() ?? .undefined
        let _arg3 = data?.jsValue() ?? .undefined
        let _arg4 = origin?.jsValue() ?? .undefined
        let _arg5 = lastEventId?.jsValue() ?? .undefined
        let _arg6 = source?.jsValue() ?? .undefined
        let _arg7 = ports?.jsValue() ?? .undefined
        return jsObject[Keys.initMessageEvent]!(_arg0, _arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7).fromJSValue()!
    }
}
