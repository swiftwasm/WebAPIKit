// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class Storage: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.Storage.function! }

    private enum Keys {
        static let clear: JSString = "clear"
        static let getItem: JSString = "getItem"
        static let key: JSString = "key"
        static let length: JSString = "length"
        static let removeItem: JSString = "removeItem"
        static let setItem: JSString = "setItem"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    public func key(index: UInt32) -> String? {
        jsObject[Keys.key]!(index.jsValue()).fromJSValue()!
    }

    public subscript(key: String) -> String? {
        jsObject[key].fromJSValue()
    }

    // XXX: unsupported setter for keys of type String

    // XXX: unsupported deleter for keys of type String

    public func clear() {
        _ = jsObject[Keys.clear]!()
    }
}