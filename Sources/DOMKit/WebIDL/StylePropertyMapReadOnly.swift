// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class StylePropertyMapReadOnly: JSBridgedClass, Sequence {
    @inlinable public class var constructor: JSFunction { JSObject.global[Strings.StylePropertyMapReadOnly].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _size = ReadonlyAttribute(jsObject: jsObject, name: Strings.size)
        self.jsObject = jsObject
    }

    public typealias Element = String
    public func makeIterator() -> ValueIterableIterator<StylePropertyMapReadOnly> {
        ValueIterableIterator(sequence: self)
    }

    @inlinable public func get(property: String) -> JSValue {
        let this = jsObject
        return this[Strings.get].function!(this: this, arguments: [property.jsValue()]).fromJSValue()!
    }

    @inlinable public func getAll(property: String) -> [CSSStyleValue] {
        let this = jsObject
        return this[Strings.getAll].function!(this: this, arguments: [property.jsValue()]).fromJSValue()!
    }

    @inlinable public func has(property: String) -> Bool {
        let this = jsObject
        return this[Strings.has].function!(this: this, arguments: [property.jsValue()]).fromJSValue()!
    }

    @ReadonlyAttribute
    public var size: UInt32
}
