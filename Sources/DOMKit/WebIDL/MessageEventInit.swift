// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MessageEventInit: BridgedDictionary {
    private enum Keys {
        static let data: JSString = "data"
        static let lastEventId: JSString = "lastEventId"
        static let origin: JSString = "origin"
        static let ports: JSString = "ports"
        static let source: JSString = "source"
    }

    public convenience init(data: JSValue, origin: String, lastEventId: String, source: MessageEventSource?, ports: [MessagePort]) {
        let object = JSObject.global.Object.function!.new()
        object[Keys.data] = data.jsValue()
        object[Keys.origin] = origin.jsValue()
        object[Keys.lastEventId] = lastEventId.jsValue()
        object[Keys.source] = source.jsValue()
        object[Keys.ports] = ports.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _data = ReadWriteAttribute(jsObject: object, name: Keys.data)
        _origin = ReadWriteAttribute(jsObject: object, name: Keys.origin)
        _lastEventId = ReadWriteAttribute(jsObject: object, name: Keys.lastEventId)
        _source = ReadWriteAttribute(jsObject: object, name: Keys.source)
        _ports = ReadWriteAttribute(jsObject: object, name: Keys.ports)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var data: JSValue

    @ReadWriteAttribute
    public var origin: String

    @ReadWriteAttribute
    public var lastEventId: String

    @ReadWriteAttribute
    public var source: MessageEventSource?

    @ReadWriteAttribute
    public var ports: [MessagePort]
}