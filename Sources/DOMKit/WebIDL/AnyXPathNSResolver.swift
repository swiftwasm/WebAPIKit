
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyXPathNSResolver: JSBridgedClass, XPathNSResolver {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathNSResolver.function! }

    let objectRef: JSObjectRef

    required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func lookupNamespaceURI(prefix: String?) -> String? {
        return objectRef.lookupNamespaceURI!(prefix.jsValue()).fromJSValue()!
    }
}
