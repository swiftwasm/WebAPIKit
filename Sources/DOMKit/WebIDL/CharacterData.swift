// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class CharacterData: Node, NonDocumentTypeChildNode, ChildNode {
    override public class var constructor: JSFunction { JSObject.global.CharacterData.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadWriteAttribute(jsObject: jsObject, name: Strings.data)
        _length = ReadonlyAttribute(jsObject: jsObject, name: Strings.length)
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var data: String

    @ReadonlyAttribute
    public var length: UInt32

    public func substringData(offset: UInt32, count: UInt32) -> String {
        jsObject[Strings.substringData]!(offset.jsValue(), count.jsValue()).fromJSValue()!
    }

    public func appendData(data: String) {
        _ = jsObject[Strings.appendData]!(data.jsValue())
    }

    public func insertData(offset: UInt32, data: String) {
        _ = jsObject[Strings.insertData]!(offset.jsValue(), data.jsValue())
    }

    public func deleteData(offset: UInt32, count: UInt32) {
        _ = jsObject[Strings.deleteData]!(offset.jsValue(), count.jsValue())
    }

    public func replaceData(offset: UInt32, count: UInt32, data: String) {
        _ = jsObject[Strings.replaceData]!(offset.jsValue(), count.jsValue(), data.jsValue())
    }
}
