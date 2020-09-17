
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class CharacterData: Node, ChildNode, NonDocumentTypeChildNode {
    override public class var constructor: JSFunction { JSObject.global.CharacterData.function! }

    public required init(unsafelyWrapping jsObject: JSObject) {
        _data = ReadWriteAttribute(jsObject: jsObject, name: "data")
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        super.init(unsafelyWrapping: jsObject)
    }

    @ReadWriteAttribute
    public var data: String

    @ReadonlyAttribute
    public var length: UInt32

    public func substringData(offset: UInt32, count: UInt32) -> String {
        return jsObject.substringData!(offset.jsValue(), count.jsValue()).fromJSValue()!
    }

    public func appendData(data: String) {
        _ = jsObject.appendData!(data.jsValue())
    }

    public func insertData(offset: UInt32, data: String) {
        _ = jsObject.insertData!(offset.jsValue(), data.jsValue())
    }

    public func deleteData(offset: UInt32, count: UInt32) {
        _ = jsObject.deleteData!(offset.jsValue(), count.jsValue())
    }

    public func replaceData(offset: UInt32, count: UInt32, data: String) {
        _ = jsObject.replaceData!(offset.jsValue(), count.jsValue(), data.jsValue())
    }
}
