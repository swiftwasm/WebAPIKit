// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Plugin: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.Plugin.function! }

    private enum Keys {
        static let description: JSString = "description"
        static let filename: JSString = "filename"
        static let length: JSString = "length"
        static let item: JSString = "item"
        static let namedItem: JSString = "namedItem"
        static let name: JSString = "name"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _name = ReadonlyAttribute(jsObject: jsObject, name: Keys.name)
        _description = ReadonlyAttribute(jsObject: jsObject, name: Keys.description)
        _filename = ReadonlyAttribute(jsObject: jsObject, name: Keys.filename)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var name: String

    @ReadonlyAttribute
    public var description: String

    @ReadonlyAttribute
    public var filename: String

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: Int) -> MimeType? {
        jsObject[key].fromJSValue()
    }

    public subscript(key: String) -> MimeType? {
        jsObject[key].fromJSValue()
    }
}
