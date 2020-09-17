
/*
 * The following code is auto generated using webidl2swift
 */

import JavaScriptKit

public class XPathEvaluator: JSBridgedClass, XPathEvaluatorBase {
    public class var constructor: JSFunction { JSObject.global.XPathEvaluator.function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(unsafelyWrapping: XPathEvaluator.constructor.new())
    }
}
