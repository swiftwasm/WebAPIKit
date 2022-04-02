// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PresentationConnection: EventTarget {
    override public class var constructor: JSFunction { JSObject.global[Strings.PresentationConnection].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _url = ReadonlyAttribute(jsObject: jsObject, name: Strings.url)
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _onconnect = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onconnect)
        _onclose = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onclose)
        _onterminate = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onterminate)
        _binaryType = ReadWriteAttribute(jsObject: jsObject, name: Strings.binaryType)
        _onmessage = ClosureAttribute.Optional1(jsObject: jsObject, name: Strings.onmessage)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var url: String

    @ReadonlyAttribute
    public var state: PresentationConnectionState

    public func close() {
        _ = jsObject[Strings.close]!()
    }

    public func terminate() {
        _ = jsObject[Strings.terminate]!()
    }

    @ClosureAttribute.Optional1
    public var onconnect: EventHandler

    @ClosureAttribute.Optional1
    public var onclose: EventHandler

    @ClosureAttribute.Optional1
    public var onterminate: EventHandler

    @ReadWriteAttribute
    public var binaryType: BinaryType

    @ClosureAttribute.Optional1
    public var onmessage: EventHandler

    public func send(message: String) {
        _ = jsObject[Strings.send]!(message.jsValue())
    }

    public func send(data: Blob) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }

    public func send(data: ArrayBuffer) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }

    public func send(data: ArrayBufferView) {
        _ = jsObject[Strings.send]!(data.jsValue())
    }
}