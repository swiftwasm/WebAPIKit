
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

class AnyXPathNSResolver: JSBridgedType, XPathNSResolver {
    let objectRef: JSObjectRef

    required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func lookupNamespaceURI(prefix: String?) -> String? {
        return objectRef.lookupNamespaceURI!(prefix.jsValue()).fromJSValue()
    }
}
