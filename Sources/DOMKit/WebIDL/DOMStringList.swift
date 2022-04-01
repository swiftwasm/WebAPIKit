// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DOMStringList: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DOMStringList.function! }

    private enum Keys {
        static let contains: JSString = "contains"
        static let item: JSString = "item"
        static let length: JSString = "length"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: UInt32) -> String? {
        jsObject[key].fromJSValue()
    }

    public func contains(string: String) -> Bool {
        jsObject[Keys.contains]!(string.jsValue()).fromJSValue()!
    }
}
