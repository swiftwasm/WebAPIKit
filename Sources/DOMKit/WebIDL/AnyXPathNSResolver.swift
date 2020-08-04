
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit
// import ECMAScript

class AnyXPathNSResolver: JSBridgedType, XPathNSResolver {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathNSResolver.function! }

    let objectRef: JSObjectRef

    required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public func lookupNamespaceURI(prefix: String?) -> String? {
        return objectRef.lookupNamespaceURI!(JSValue(from: prefix)).fromJSValue()
    }
}
