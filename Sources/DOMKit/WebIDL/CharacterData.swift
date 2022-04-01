// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CharacterData: Node, NonDocumentTypeChildNode, ChildNode {
    override public class var constructor: JSFunction { JSObject.global.CharacterData.function! }

    private enum Keys {
        static let appendData: JSString = "appendData"
        static let length: JSString = "length"
        static let deleteData: JSString = "deleteData"
        static let replaceData: JSString = "replaceData"
        static let insertData: JSString = "insertData"
        static let substringData: JSString = "substringData"
        static let data: JSString = "data"
    }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadWriteAttribute(jsObject: jsObject, name: Keys.data)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var data: String

    @ReadonlyAttribute
    public var length: UInt32

    public func substringData(offset: UInt32, count: UInt32) -> String {
        jsObject[Keys.substringData]!(offset.jsValue(), count.jsValue()).fromJSValue()!
    }

    public func appendData(data: String) {
        _ = jsObject[Keys.appendData]!(data.jsValue())
    }

    public func insertData(offset: UInt32, data: String) {
        _ = jsObject[Keys.insertData]!(offset.jsValue(), data.jsValue())
    }

    public func deleteData(offset: UInt32, count: UInt32) {
        _ = jsObject[Keys.deleteData]!(offset.jsValue(), count.jsValue())
    }

    public func replaceData(offset: UInt32, count: UInt32, data: String) {
        _ = jsObject[Keys.replaceData]!(offset.jsValue(), count.jsValue(), data.jsValue())
    }
}
