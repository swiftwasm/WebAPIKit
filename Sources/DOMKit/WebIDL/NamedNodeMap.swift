
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class NamedNodeMap: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.NamedNodeMap.function! }

    public let jsObject: JSObject

    public required init(withCompatibleObject jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: "length")
        self.jsObject = jsObject
    }

    public subscript(_: String) -> Attr?? {
        return jsObject.qualifiedName.fromJSValue()!
    }

    @ReadonlyAttribute
    public var length: UInt32

    public func getNamedItemNS(namespace: String?, localName: String) -> Attr? {
        return jsObject.getNamedItemNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setNamedItem(attr: Attr) -> Attr? {
        return jsObject.setNamedItem!(attr.jsValue()).fromJSValue()!
    }

    public func setNamedItemNS(attr: Attr) -> Attr? {
        return jsObject.setNamedItemNS!(attr.jsValue()).fromJSValue()!
    }

    public func removeNamedItem(qualifiedName: String) -> Attr {
        return jsObject.removeNamedItem!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func removeNamedItemNS(namespace: String?, localName: String) -> Attr {
        return jsObject.removeNamedItemNS!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }
}
