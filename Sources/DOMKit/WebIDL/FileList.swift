// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class FileList: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.FileList.function! }

    private enum Keys {
        static let item: JSString = "item"
        static let length: JSString = "length"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        self.jsObject = jsObject
    }

    public subscript(key: Int) -> File? {
        jsObject[key].fromJSValue()
    }

    @ReadonlyAttribute
    public var length: UInt32
}
