
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class CharacterData: Node, ChildNode, NonDocumentTypeChildNode {
    override public class var classRef: JSFunctionRef { JSObjectRef.global.CharacterData.function! }

    public required init(objectRef: JSObjectRef) {
        _data = ReadWriteAttribute(objectRef: objectRef, name: "data")
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        super.init(objectRef: objectRef)
    }

    @ReadWriteAttribute
    public var data: String

    @ReadonlyAttribute
    public var length: UInt32

    public func substringData(offset: UInt32, count: UInt32) -> String {
        return objectRef.substringData!(offset.jsValue(), count.jsValue()).fromJSValue()
    }

    public func appendData(data: String) {
        _ = objectRef.appendData!(data.jsValue())
    }

    public func insertData(offset: UInt32, data: String) {
        _ = objectRef.insertData!(offset.jsValue(), data.jsValue())
    }

    public func deleteData(offset: UInt32, count: UInt32) {
        _ = objectRef.deleteData!(offset.jsValue(), count.jsValue())
    }

    public func replaceData(offset: UInt32, count: UInt32, data: String) {
        _ = objectRef.replaceData!(offset.jsValue(), count.jsValue(), data.jsValue())
    }
}
