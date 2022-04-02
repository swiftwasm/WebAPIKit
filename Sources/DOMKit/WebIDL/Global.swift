// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Global: JSBridgedClass {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.Global].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _value = ReadWriteAttribute(jsObject: jsObject, name: Strings.value)
        self.jsObject = jsObject
    }

    @inlinable public convenience init(descriptor: GlobalDescriptor, v: JSValue? = nil) {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: [descriptor.jsValue(), v?.jsValue() ?? .undefined]))
    }

    @inlinable public func valueOf() -> JSValue {
        let this = jsObject
        return this[Strings.valueOf].function!(this: this, arguments: []).fromJSValue()!
    }

    @ReadWriteAttribute
    public var value: JSValue
}
