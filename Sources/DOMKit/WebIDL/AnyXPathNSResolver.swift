
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyXPathNSResolver: JSBridgedClass, XPathNSResolver {
    public class var constructor: JSFunction { JSObject.global.XPathNSResolver.function! }

    let jsObject: JSObject

    required init(withCompatibleObject jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public func lookupNamespaceURI(prefix: String?) -> String? {
        return jsObject.lookupNamespaceURI!(prefix.jsValue()).fromJSValue()!
    }
}
