
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class NamedNodeMap: JSBridgedType {
    public class var classRef: JSFunctionRef { JSObjectRef.global.NamedNodeMap.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        _length = ReadonlyAttribute(objectRef: objectRef, name: "length")
        self.objectRef = objectRef
    }

    public subscript(qualifiedName: String) -> Attr?? {
        return objectRef[dynamicMember: qualifiedName].fromJSValue()
    }

    @ReadonlyAttribute
    public var length: UInt32

    public func getNamedItemNS(namespace: String?, localName: String) -> Attr? {
        return objectRef.getNamedItemNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()
    }

    public func setNamedItem(attr: Attr) -> Attr? {
        return objectRef.setNamedItem!(attr.jsValue()).fromJSValue()
    }

    public func setNamedItemNS(attr: Attr) -> Attr? {
        return objectRef.setNamedItemNS!(attr.jsValue()).fromJSValue()
    }

    public func removeNamedItem(qualifiedName: String) -> Attr {
        return objectRef.removeNamedItem!(qualifiedName.jsValue()).fromJSValue()
    }

    public func removeNamedItemNS(namespace: String?, localName: String) -> Attr {
        return objectRef.removeNamedItemNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()
    }
}
