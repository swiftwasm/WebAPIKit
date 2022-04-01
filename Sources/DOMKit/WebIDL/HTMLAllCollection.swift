// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class HTMLAllCollection: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.HTMLAllCollection.function! }

    private enum Keys {
        static let item: JSString = "item"
        static let length: JSString = "length"
        static let namedItem: JSString = "namedItem"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: UInt32) -> Element {
        jsObject[key].fromJSValue()!
    }

    public subscript(key: String) -> __UNSUPPORTED_UNION__? {
        jsObject[key].fromJSValue()
    }

    public func item(nameOrIndex: String? = nil) -> __UNSUPPORTED_UNION__? {
        jsObject[Keys.item]!(nameOrIndex?.jsValue() ?? .undefined).fromJSValue()!
    }
}
