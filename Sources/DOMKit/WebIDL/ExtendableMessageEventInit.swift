// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class ExtendableMessageEventInit: BridgedDictionary {
    public convenience init(data: JSValue, origin: String, lastEventId: String, source: __UNSUPPORTED_UNION__?, ports: [MessagePort]) {
        let object = JSObject.global[Strings.Object].function!.new()
        object[Strings.data] = data.jsValue()
        object[Strings.origin] = origin.jsValue()
        object[Strings.lastEventId] = lastEventId.jsValue()
        object[Strings.source] = source.jsValue()
        object[Strings.ports] = ports.jsValue()
        self.init(unsafelyWrapping: object)
    }

    public required init(unsafelyWrapping object: JSObject) {
        _data = ReadWriteAttribute(jsObject: object, name: Strings.data)
        _origin = ReadWriteAttribute(jsObject: object, name: Strings.origin)
        _lastEventId = ReadWriteAttribute(jsObject: object, name: Strings.lastEventId)
        _source = ReadWriteAttribute(jsObject: object, name: Strings.source)
        _ports = ReadWriteAttribute(jsObject: object, name: Strings.ports)
        super.init(unsafelyWrapping: object)
    }

    @ReadWriteAttribute
    public var data: JSValue

    @ReadWriteAttribute
    public var origin: String

    @ReadWriteAttribute
    public var lastEventId: String

    @ReadWriteAttribute
    public var source: __UNSUPPORTED_UNION__?

    @ReadWriteAttribute
    public var ports: [MessagePort]
}
