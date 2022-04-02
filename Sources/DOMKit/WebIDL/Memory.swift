// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Memory: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.Memory].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _buffer = ReadonlyAttribute(jsObject: jsObject, name: Strings.buffer)
        self.jsObject = jsObject
    }

    public convenience init(descriptor: MemoryDescriptor) {
        self.init(unsafelyWrapping: Self.constructor.new(descriptor.jsValue()))
    }

    public func grow(delta: UInt32) -> UInt32 {
        let this = jsObject
        return this[Strings.grow].function!(this: this, arguments: [delta.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var buffer: ArrayBuffer
}
