// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class MediaKeyStatusMap: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global[Strings.MediaKeyStatusMap].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _size = ReadonlyAttribute(jsObject: jsObject, name: Strings.size)
        self.jsObject = jsObject
    }

    public typealias Element = BufferSource
    public func makeIterator() -> ValueIterableIterator<MediaKeyStatusMap> {
        ValueIterableIterator(sequence: self)
    }

    @ReadonlyAttribute
    public var size: UInt32

    public func has(keyId: BufferSource) -> Bool {
        let this = jsObject
        return this[Strings.has].function!(this: this, arguments: [keyId.jsValue()]).fromJSValue()!
    }

    public func get(keyId: BufferSource) -> __UNSUPPORTED_UNION__ {
        let this = jsObject
        return this[Strings.get].function!(this: this, arguments: [keyId.jsValue()]).fromJSValue()!
    }
}
