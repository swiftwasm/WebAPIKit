// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class NamedNodeMap: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global.NamedNodeMap.function! }

    private enum Keys {
        static let getNamedItem: JSString = "getNamedItem"
        static let getNamedItemNS: JSString = "getNamedItemNS"
        static let item: JSString = "item"
        static let length: JSString = "length"
        static let removeNamedItem: JSString = "removeNamedItem"
        static let removeNamedItemNS: JSString = "removeNamedItemNS"
        static let setNamedItem: JSString = "setNamedItem"
        static let setNamedItemNS: JSString = "setNamedItemNS"
    }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _length = ReadonlyAttribute(jsObject: jsObject, name: Keys.length)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var length: UInt32

    public subscript(key: UInt32) -> Attr? {
        jsObject[key].fromJSValue()
    }

    public subscript(key: String) -> Attr? {
        jsObject[key].fromJSValue()
    }

    public func getNamedItemNS(namespace: String?, localName: String) -> Attr? {
        jsObject[Keys.getNamedItemNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }

    public func setNamedItem(attr: Attr) -> Attr? {
        jsObject[Keys.setNamedItem]!(attr.jsValue()).fromJSValue()!
    }

    public func setNamedItemNS(attr: Attr) -> Attr? {
        jsObject[Keys.setNamedItemNS]!(attr.jsValue()).fromJSValue()!
    }

    public func removeNamedItem(qualifiedName: String) -> Attr {
        jsObject[Keys.removeNamedItem]!(qualifiedName.jsValue()).fromJSValue()!
    }

    public func removeNamedItemNS(namespace: String?, localName: String) -> Attr {
        jsObject[Keys.removeNamedItemNS]!(namespace.jsValue(), localName.jsValue()).fromJSValue()!
    }
}
