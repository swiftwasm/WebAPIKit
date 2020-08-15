
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class XPathEvaluator: JSBridgedClass, XPathEvaluatorBase {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathEvaluator.function! }

    public let objectRef: JSObjectRef

    public required init(withCompatibleObject objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init() {
        self.init(withCompatibleObject: XPathEvaluator.classRef.new())
    }
}
