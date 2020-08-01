
/*
 * The following code is auto generated using webidl2swift
 */

import ECMAScript
import JavaScriptKit

public class XPathEvaluator: JSBridgedType, XPathEvaluatorBase {
    public class var classRef: JSFunctionRef { JSObjectRef.global.XPathEvaluator.function! }

    public let objectRef: JSObjectRef

    public required init(objectRef: JSObjectRef) {
        self.objectRef = objectRef
    }

    public convenience init() {
        self.init(objectRef: XPathEvaluator.classRef.new())
    }
}
