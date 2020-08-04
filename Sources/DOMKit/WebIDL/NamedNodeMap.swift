
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

public class NamedNodeMap: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.NamedNodeMap.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    public subscript(_: String) -> Attr?? {
        return objectRef.qualifiedName.fromJSValue()
    }

    @ReadonlyAttribute
    public var length: UInt32

    public func getNamedItemNS(namespace: String?, localName: String) -> Attr? {
        return objectRef.getNamedItemNS!(JSValue(from: namespace), JSValue(from: localName)).fromJSValue()
    }

    public func setNamedItem(attr: Attr) -> Attr? {
        return objectRef.setNamedItem!(JSValue(from: attr)).fromJSValue()
    }

    public func setNamedItemNS(attr: Attr) -> Attr? {
        return objectRef.setNamedItemNS!(JSValue(from: attr)).fromJSValue()
    }

    public func removeNamedItem(qualifiedName: String) -> Attr {
        return objectRef.removeNamedItem!(JSValue(from: qualifiedName)).fromJSValue()
    }

    public func removeNamedItemNS(namespace: String?, localName: String) -> Attr {
        return objectRef.removeNamedItemNS!(JSValue(from: namespace), JSValue(from: localName)).fromJSValue()
    }
}
