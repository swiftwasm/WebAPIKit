// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class DataTransferItemList: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.DataTransferItemList.function! }

    private enum Keys {
        static let add: JSString = "add"
        static let clear: JSString = "clear"
        static let length: JSString = "length"
        static let remove: JSString = "remove"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: Int) -> DataTransferItem {
        jsObject[key].fromJSValue()!
    }

    public func add(data: String, type: String) -> DataTransferItem? {
        jsObject[Keys.add]!(data.jsValue(), type.jsValue()).fromJSValue()!
    }

    public func add(data: File) -> DataTransferItem? {
        jsObject[Keys.add]!(data.jsValue()).fromJSValue()!
    }

    public func remove(index: UInt32) {
        _ = jsObject[Keys.remove]!(index.jsValue())
    }

    public func clear() {
        _ = jsObject[Keys.clear]!()
    }
}