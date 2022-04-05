// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class PresentationConnection: EventTarget {
    @inlinable override public class var constructor: JSFunction { JSObject.global[Strings.PresentationConnection].function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _id = ReadonlyAttribute(jsObject: jsObject, name: Strings.id)
        _url = ReadonlyAttribute(jsObject: jsObject, name: Strings.url)
        _state = ReadonlyAttribute(jsObject: jsObject, name: Strings.state)
        _onconnect = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onconnect)
        _onclose = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onclose)
        _onterminate = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onterminate)
        _binaryType = ReadWriteAttribute(jsObject: jsObject, name: Strings.binaryType)
        _onmessage = ClosureAttribute1Optional(jsObject: jsObject, name: Strings.onmessage)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadonlyAttribute
    public var id: String

    @ReadonlyAttribute
    public var url: String

    @ReadonlyAttribute
    public var state: PresentationConnectionState

    @inlinable public func close() {
        let this = jsObject
        _ = this[Strings.close].function!(this: this, arguments: [])
    }

    @inlinable public func terminate() {
        let this = jsObject
        _ = this[Strings.terminate].function!(this: this, arguments: [])
    }

    @ClosureAttribute1Optional
    public var onconnect: EventHandler

    @ClosureAttribute1Optional
    public var onclose: EventHandler

    @ClosureAttribute1Optional
    public var onterminate: EventHandler

    @ReadWriteAttribute
    public var binaryType: BinaryType

    @ClosureAttribute1Optional
    public var onmessage: EventHandler

    @inlinable public func send(message: String) {
        let this = jsObject
        _ = this[Strings.send].function!(this: this, arguments: [message.jsValue])
    }

    @inlinable public func send(data: Blob) {
        let this = jsObject
        _ = this[Strings.send].function!(this: this, arguments: [data.jsValue])
    }

    @inlinable public func send(data: ArrayBuffer) {
        let this = jsObject
        _ = this[Strings.send].function!(this: this, arguments: [data.jsValue])
    }

    @inlinable public func send(data: ArrayBufferView) {
        let this = jsObject
        _ = this[Strings.send].function!(this: this, arguments: [data.jsValue])
    }
}
