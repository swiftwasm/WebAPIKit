// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XPathEvaluator: JSBridgedClass, XPathEvaluatorBase {
    public class var constructor: JSFunction { JSObject.global[Strings.XPathEvaluator].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        self.jsObject = jsObject
    }

    public convenience init() {
        self.init(unsafelyWrapping: Self.constructor.new(arguments: []))
    }
}
