// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FontFacePalette: JSBridgedClass, Sequence {
    public class var constructor: JSFunction { JSObject.global[Strings.FontFacePalette].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        _usableWithLightBackground = ReadonlyAttribute(jsObject: jsObject, name: Strings.usableWithLightBackground)
        _usableWithDarkBackground = ReadonlyAttribute(jsObject: jsObject, name: Strings.usableWithDarkBackground)
        self.jsObject = jsObject
    }

    public typealias Element = String
    public func makeIterator() -> ValueIterableIterator<FontFacePalette> {
        ValueIterableIterator(sequence: self)
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: Int) -> String {
        jsObject[key].fromJSValue()!
    }

    @ReadonlyAttribute
    public var usableWithLightBackground: Bool

    @ReadonlyAttribute
    public var usableWithDarkBackground: Bool
}