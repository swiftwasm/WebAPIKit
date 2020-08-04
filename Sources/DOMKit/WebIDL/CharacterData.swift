
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

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
        return objectRef.substringData!(JSValue(from: offset), JSValue(from: count)).fromJSValue()
    }

    public func appendData(data: String) {
        _ = objectRef.appendData!(JSValue(from: data))
    }

    public func insertData(offset: UInt32, data: String) {
        _ = objectRef.insertData!(JSValue(from: offset), JSValue(from: data))
    }

    public func deleteData(offset: UInt32, count: UInt32) {
        _ = objectRef.deleteData!(JSValue(from: offset), JSValue(from: count))
    }

    public func replaceData(offset: UInt32, count: UInt32, data: String) {
        _ = objectRef.replaceData!(JSValue(from: offset), JSValue(from: count), JSValue(from: data))
    }
}
